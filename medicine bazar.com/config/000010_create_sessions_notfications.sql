-- =============================================================
-- Migration: 000010_create_sessions_notfications
-- JWT refresh tokens + in-app notification log
-- =============================================================

-- --- Refresh Token Store -------------------------------------

CREATE TABLE IF NOT EXISTS refresh_tokens (
id INTEGER PRIMARY KEY AUTOINCREMENT,
user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
token_hash TEXT NOT NULL UNIQUE,        ---- SHA-256 of the raw token
device_info TEXT,                       ---- "Android 14 / Pixel 7"
expires_at DATETIME NOT NULL,
revoked INTEGER NOT NULL DEFAULT 0,
create_at  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_refresh_tokens_user_id ON refresh_tokens(user_id);
CREATE INDEX IF NOT EXISTS idx_refresh_tokens_token_hash ON refresh_tokens(token_hash);
CREATE INDEX IF NOT EXISTS idx_refresh_tokens_expires_at ON refresh_tokens(expires_at);

-- ------ Notification Log -------------------------------------

CREATE TABLE IF NOT EXISTS notifications(
id INTEGER PRIMARY KEY AUTOINCREMENT,
user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
type TEXT NOT NULL,       -- order_update | low_stock | expiry_alert | promo
title TEXT NOT NULL,
body TEXT NOT NULL,
reference_id INTEGER,     -- related_order_id | in_app
is_read INTEGER NOT NULL DEFAULT 0,
sent_via TEXT,            -- sms | email | push | in_app
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP);

CREATE INDEX IF NOT EXISTS idx_notifications_user_id ON notifications(user_id);
CREATE INDEX IF NOT EXISTS idx_notifications_is_read ON notifications(is_read);
CREATE INDEX IF NOT EXISTS idx_notifications_type ON notifications(type);
