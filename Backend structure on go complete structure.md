backend/
├── go.mod                        # Go module definition
├── go.sum                        # Dependency checksums
├── main.go                       # Application entry point
├── README.md
│
├── cmd/                          # Command-line applications
│   ├── server/
│   │   └── main.go              # HTTP server startup
│   ├── migrate/
│   │   └── main.go              # Database migration tool
│   └── seed/
│       └── main.go              # Seed initial data
│
├── internal/                     # Private application code
│   │
│   ├── config/                   # Configuration management
│   │   ├── config.go            # Load config from file/env
│   │   └── config.yaml          # Default configuration
│   │
│   ├── database/                 # Database layer
│   │   ├── db.go                # Database connection setup
│   │   ├── sqlite.go            # SQLite-specific code
│   │   └── migrations.go        # Schema migrations
│   │
│   ├── models/                   # Data models
│   │   ├── user.go
│   │   ├── medicine.go
│   │   ├── order.go
│   │   ├── order_item.go
│   │   ├── admin.go
│   │   ├── category.go
│   │   └── prescription.go
│   │
│   ├── repository/               # Database operations (CRUD)
│   │   ├── user_repo.go
│   │   ├── medicine_repo.go
│   │   ├── order_repo.go
│   │   ├── admin_repo.go
│   │   └── repository.go        # Common repo interface
│   │
│   ├── service/                  # Business logic layer
│   │   ├── auth_service.go      # Login, JWT, password
│   │   ├── medicine_service.go  # Medicine CRUD + search
│   │   ├── order_service.go     # Order placement, tracking
│   │   ├── payment_service.go   # Payment processing
│   │   ├── cart_service.go      # Shopping cart logic
│   │   ├── inventory_service.go # Stock management
│   │   └── notification_service.go # SMS/Email notifications
│   │
│   ├── handler/                  # HTTP request handlers (Controllers)
│   │   ├── api/                 # REST API handlers
│   │   │   ├── auth_handler.go
│   │   │   ├── medicine_handler.go
│   │   │   ├── order_handler.go
│   │   │   ├── cart_handler.go
│   │   │   ├── user_handler.go
│   │   │   └── admin_handler.go
│   │   │
│   │   └── web/                 # Web page handlers
│   │       ├── home_handler.go
│   │       ├── product_handler.go
│   │       ├── cart_handler.go
│   │       ├── checkout_handler.go
│   │       └── admin_handler.go
│   │
│   ├── middleware/               # HTTP middleware
│   │   ├── auth.go              # JWT authentication
│   │   ├── cors.go              # CORS configuration
│   │   ├── logger.go            # Request logging
│   │   ├── ratelimit.go         # Rate limiting
│   │   └── recovery.go          # Panic recovery
│   │
│   ├── router/                   # Route definitions
│   │   ├── router.go            # Main router setup
│   │   ├── api_routes.go        # API endpoints
│   │   └── web_routes.go        # Web page routes
│   │
│   ├── util/                     # Utility functions
│   │   ├── jwt.go               # JWT token generation
│   │   ├── password.go          # Password hashing
│   │   ├── validator.go         # Input validation
│   │   ├── response.go          # Standard API responses
│   │   ├── pagination.go        # Pagination helper
│   │   └── file.go              # File upload handling
│   │
│   └── payment/                  # Payment gateway integrations
│       ├── gateway.go           # Payment interface
│       ├── razorpay.go          # Razorpay implementation
│       ├── paytm.go             # Paytm implementation
│       └── cod.go               # Cash on delivery
│
├── pkg/                          # Public libraries (reusable)
│   ├── logger/
│   │   └── logger.go            # Structured logging
│   ├── validator/
│   │   └── validator.go         # Custom validators
│   └── crypto/
│       └── crypto.go            # Encryption utilities
│
├── api/                          # API documentation
│   ├── openapi.yaml             # OpenAPI/Swagger spec
│   └── postman_collection.json  # Postman collection
│
├── tests/                        # Test files
│   ├── integration/
│   │   ├── auth_test.go
│   │   ├── order_test.go
│   │   └── medicine_test.go
│   ├── unit/
│   │   ├── service_test.go
│   │   └── repository_test.go
│   └── testdata/
│       └── test.db              # Test database
│
└── build/                        # Build artifacts
    ├── Dockerfile
    ├── .dockerignore
    └── build.sh                 # Build script
