database/
├── README.md                        # Database overview & conventions
│
├── migrations/                      # Versioned schema migrations (run in order)
│   ├── 000001_create_users.sql
│   ├── 000002_create_categories.sql
│   ├── 000003_create_medicines.sql
│   ├── 000004_create_inventory.sql
│   ├── 000005_create_orders.sql
│   ├── 000006_create_order_items.sql
│   ├── 000007_create_cart.sql
│   ├── 000008_create_prescriptions.sql
│   ├── 000009_create_suppliers.sql
│   └── 000010_create_purchase_orders.sql
│
├── seeds/                           # Initial / demo data
│   ├── 01_admin_user.sql
│   ├── 02_categories.sql
│   ├── 03_medicines.sql
│   └── 04_sample_orders.sql
│
├── schema/                          # Full schema snapshots (human-readable reference)
│   ├── schema.sql                   # Complete current schema (SQLite)
│   ├── schema_postgres.sql          # PostgreSQL variant
│   └── erd.png                      # Entity-relationship diagram
│
├── queries/                         # Saved / reusable raw SQL queries
│   ├── reports/
│   │   ├── daily_sales.sql
│   │   ├── low_stock.sql
│   │   ├── expiring_medicines.sql
│   │   └── top_products.sql
│   └── admin/
│       ├── user_summary.sql
│       └── order_summary.sql
│
└── backups/                         # Local dev backups (git-ignored in prod)
    └── .gitkeep
