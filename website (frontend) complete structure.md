web/
├── README.md
├── package.json                  # Optional: if using build tools
│
├── static/                       # Static assets (served directly)
│   │
│   ├── css/
│   │   ├── main.css             # Main stylesheet
│   │   ├── admin.css            # Admin panel styles
│   │   ├── mobile.css           # Mobile responsive
│   │   ├── components/
│   │   │   ├── header.css
│   │   │   ├── footer.css
│   │   │   ├── card.css
│   │   │   └── button.css
│   │   └── vendor/
│   │       └── normalize.css    # CSS reset
│   │
│   ├── js/
│   │   ├── main.js              # Main JavaScript
│   │   ├── cart.js              # Shopping cart logic
│   │   ├── search.js            # Search functionality
│   │   ├── checkout.js          # Checkout page logic
│   │   ├── admin.js             # Admin panel JS
│   │   ├── utils.js             # Utility functions
│   │   ├── api.js               # API client wrapper
│   │   └── vendor/
│   │       ├── htmx.min.js      # HTMX for interactivity (optional)
│   │       └── alpine.min.js    # Alpine.js (optional, lightweight)
│   │
│   ├── images/
│   │   ├── logo.png
│   │   ├── favicon.ico
│   │   ├── placeholder.png      # Medicine placeholder image
│   │   ├── icons/
│   │   │   ├── cart.svg
│   │   │   ├── search.svg
│   │   │   ├── user.svg
│   │   │   └── menu.svg
│   │   └── banners/
│   │       ├── home-banner.jpg
│   │       └── promo-banner.jpg
│   │
│   ├── fonts/                    # Custom fonts (if needed)
│   │   ├── inter-regular.woff2
│   │   └── inter-bold.woff2
│   │
│   └── uploads/                  # User-uploaded files
│       ├── medicines/           # Medicine images
│       └── prescriptions/       # Prescription uploads
│
├── templates/                    # HTML templates (Go templates)
│   │
│   ├── layouts/
│   │   ├── base.html            # Base layout with header/footer
│   │   ├── admin.html           # Admin panel layout
│   │   └── error.html           # Error page layout
│   │
│   ├── components/              # Reusable components
│   │   ├── header.html
│   │   ├── footer.html
│   │   ├── navigation.html
│   │   ├── product-card.html
│   │   ├── pagination.html
│   │   └── breadcrumb.html
│   │
│   ├── pages/                   # Customer-facing pages
│   │   ├── home.html            # Homepage
│   │   ├── products.html        # Product listing
│   │   ├── product-detail.html  # Single product page
│   │   ├── cart.html            # Shopping cart
│   │   ├── checkout.html        # Checkout page
│   │   ├── order-success.html   # Order confirmation
│   │   ├── orders.html          # Order history
│   │   ├── order-detail.html    # Single order view
│   │   ├── login.html           # Login page
│   │   ├── register.html        # Registration
│   │   ├── profile.html         # User profile
│   │   ├── about.html           # About page
│   │   ├── contact.html         # Contact page
│   │   └── search-results.html  # Search results
│   │
│   ├── admin/                   # Admin panel pages
│   │   ├── dashboard.html       # Admin dashboard
│   │   ├── medicines/
│   │   │   ├── list.html        # Medicine list
│   │   │   ├── create.html      # Add medicine
│   │   │   ├── edit.html        # Edit medicine
│   │   │   └── view.html        # View medicine details
│   │   ├── orders/
│   │   │   ├── list.html        # Order list
│   │   │   ├── detail.html      # Order details
│   │   │   └── status.html      # Update order status
│   │   ├── users/
│   │   │   ├── list.html        # User list
│   │   │   └── detail.html      # User details
│   │   ├── inventory/
│   │   │   ├── overview.html    # Stock overview
│   │   │   └── alerts.html      # Low stock alerts
│   │   ├── reports/
│   │   │   ├── sales.html       # Sales reports
│   │   │   └── analytics.html   # Analytics dashboard
│   │   └── settings/
│   │       ├── profile.html     # Admin profile
│   │       └── shop.html        # Shop settings
│   │
│   └── errors/                  # Error pages
│       ├── 404.html
│       ├── 500.html
│       └── maintenance.html
│
└── docs/
    ├── design-system.md         # UI design guidelines
    └── components.md            # Component documentation
