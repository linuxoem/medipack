# MedicineBazar

A full-stack medical store management system built with **Go** and **Kotlin**, designed to handle end-to-end pharmacy operations — from inventory and procurement to sales, billing, and mobile POS usage.

---

## Overview

MedicineBazar has two distinct user-facing surfaces, both powered by a single Go backend:

- **Web application** — server-rendered pages built with Go's `html/template` engine, covering both the customer-facing storefront and the admin dashboard. There is no separate frontend framework; Go handles routing, logic, and HTML rendering directly.
- **Android app** — a native Kotlin app that communicates with the backend via REST API, with offline support through a local Room database.

```
Android App ──────── REST API ──┐
                                 ├── Go Backend ── Database
Web Browser ── HTTP (Go templates)┘
```

The Go backend is the single source of truth — it serves HTML to browsers and JSON to the Android app from the same server.

---

## Features

- Medicine and batch-wise inventory management
- Supplier and purchase order tracking
- Sales and billing with invoice generation
- Automatic stock updates on purchase and sale
- Expiry date tracking and low-stock alerts
- Customer and user account management
- Role-based access control (admin, staff, customer)
- Order history and reporting
- Android app for mobile and on-floor POS usage
- Prescription upload support

---

## Tech Stack

### Backend — Go
- RESTful API (consumed by Android app)
- Server-side HTML rendering via Go's `html/template` (consumed by web browser)
- JWT-based authentication
- Modular service and repository architecture
- Payment gateway integrations (Razorpay, Paytm, COD)
- SQLite (default) or PostgreSQL

### Web Frontend
- Pure HTML, CSS, and vanilla JavaScript
- All pages are rendered server-side by Go — there is no client-side framework
- Optional lightweight enhancements via HTMX and Alpine.js
- Admin dashboard and customer-facing storefront

### Android App — Kotlin
- MVVM architecture
- Room database for offline support and local sync
- Retrofit for REST API communication
- Hilt for dependency injection

---

## Project Structure

```
medicinebazar/
├── backend/        # Go server — API + web template rendering
├── web/            # HTML templates and static assets served by Go
├── android/        # Native Kotlin Android application
├── database/       # Database schemas and migrations
├── config/         # Environment and application configuration
├── docs/           # Documentation
├── scripts/        # Build, deploy, and maintenance scripts
├── releases/       # Pre-built binaries and APKs for distribution
├── Makefile        # Build everything with one command
└── README.md
```

---

## Getting Started

### Prerequisites

- Go 1.21+
- Android Studio (for Android app)
- SQLite or PostgreSQL
- Make (optional, for Makefile commands)

### Backend

```bash
cd backend
go run main.go
```

The server will start and serve both the web frontend (HTML) and the REST API from the same port.

### Web

No separate setup needed. The Go backend serves all web pages automatically once the server is running. Point your browser to `http://localhost:<port>`.

### Android

1. Open the `android/` directory in Android Studio
2. Set the API base URL in the config to point to your running backend
3. Build and run on a device or emulator

### Using Make

```bash
make build-all     # Build backend binary + Android APK
make run           # Run backend locally
make migrate       # Run database migrations
make seed          # Seed initial data
```

---

## Scripts

The `scripts/` directory contains shell scripts for common operations:

- `scripts/build/` — build backend, Android APK, or everything at once
- `scripts/deploy/` — install, update, or remove a deployment; SSL setup
- `scripts/database/` — migrations, seeding, backup, restore, reset
- `scripts/maintenance/` — health checks, log cleanup, service restart
- `scripts/dev/` — local dev setup and test data generation

---

## Documentation

Full documentation is in the `docs/` directory:

| Document | Description |
|---|---|
| `docs/setup/INSTALLATION.md` | Complete installation guide |
| `docs/setup/SERVER_SETUP.md` | Server configuration |
| `docs/setup/DOCKER_SETUP.md` | Docker deployment |
| `docs/development/ARCHITECTURE.md` | System architecture |
| `docs/development/API_REFERENCE.md` | REST API reference |
| `docs/development/DATABASE_SCHEMA.md` | Database design |
| `docs/user-guides/ADMIN_MANUAL.md` | Admin panel guide |
| `docs/user-guides/MOBILE_APP_GUIDE.md` | Android app guide |
| `docs/operations/TROUBLESHOOTING.md` | Common issues and fixes |

---

## Releases

Pre-built binaries and APKs are available in the `releases/` directory, versioned for each stable release:

- `medshop-server-linux-amd64` — compiled Go server binary
- `medshop-app-vX.X.X.apk` — Android APK
- `web-static.tar.gz` — static web assets
- `database-schema.sql` — database schema

See `releases/latest/` for the most recent stable build.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Disclaimer

This project is intended for educational, demonstration, and small-scale deployment purposes. It is not a certified medical or pharmaceutical compliance system.
