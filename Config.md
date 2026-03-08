config/
├── README.md                        # Config overview and environment guide
│
├── app.yaml                         # Main application config (defaults)
│
├── environments/                    # Environment-specific overrides
│   ├── development.yaml             # Local dev settings
│   ├── staging.yaml                 # Staging/testing settings
│   └── production.yaml              # Production settings (no secrets here)
│
├── .env.example                     # Template for .env file (committed to git)
├── .env                             # Actual secrets — NEVER commit this
│
├── nginx/                           # Nginx config for web server / reverse proxy
│   ├── medicinebazar.conf           # Main site config
│   └── ssl.conf                     # SSL/TLS settings
│
├── systemd/                         # Linux service definitions
│   └── medshop.service              # systemd unit file for the Go server
│
└── docker/                          # Docker & Compose configs
    ├── docker-compose.yml           # Full stack compose file
    ├── docker-compose.dev.yml       # Dev overrides
    └── .dockerignore
