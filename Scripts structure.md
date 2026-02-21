scripts/
├── build/
│   ├── build-backend.sh         # Build Go backend
│   ├── build-android.sh         # Build Android APK
│   ├── build-all.sh             # Build everything
│   └── clean.sh                 # Clean build artifacts
│
├── deploy/
│   ├── install.sh               # One-command installation
│   ├── update.sh                # Update existing installation
│   ├── uninstall.sh             # Remove installation
│   └── setup-ssl.sh             # Setup SSL certificate
│
├── database/
│   ├── migrate.sh               # Run migrations
│   ├── seed.sh                  # Seed initial data
│   ├── backup.sh                # Backup database
│   ├── restore.sh               # Restore from backup
│   └── reset.sh                 # Reset database (dev only)
│
├── maintenance/
│   ├── health-check.sh          # Check system health
│   ├── cleanup-logs.sh          # Clean old log files
│   ├── cleanup-uploads.sh       # Clean unused uploads
│   └── restart.sh               # Restart services
│
└── dev/
    ├── setup-dev.sh             # Setup dev environment
    ├── run-local.sh             # Run locally for development
    └── generate-test-data.sh    # Generate test data
