# medipack
Medical Store Management System

A full-stack web and Android application for managing end-to-end medical store operations, including inventory management, purchasing, sales, billing, and user management. The system supports the complete medicine lifecycle from procurement to sale with expiry tracking, stock accuracy, and real-time data synchronization.

Features

Medicine and batch-wise inventory management

Supplier and purchase tracking

Sales and billing with invoice generation

Automatic stock updates on purchase and sale

Expiry date and low-stock alerts

Customer and user account management

Role-based access control (admin, staff, user)

Order history and basic reporting

Android app support for mobile and POS usage

System Overview

The project follows a full-stack architecture with a centralized backend powering both the web application and the Android app.

Android App ─┐
             ├── Backend API ─── Database
Web Frontend ┘

Web application for administration and customer access

Android application optimized for mobile and on-floor operations

Backend API as the single source of truth

Tech Stack
Backend

Language: Go

RESTful API architecture

JWT-based authentication

Modular service and repository layers

Web Frontend

HTML, CSS, JavaScript

Server-rendered templates

Admin dashboard and customer-facing pages

Android App

Kotlin

MVVM architecture

Offline support with local storage and sync

Database

Relational database (SQLite / PostgreSQL supported)

Project Structure

.
├── backend/        # Backend server (Go)
├── web/            # Website frontend
├── android/        # Android application
├── database/       # Database schemas
├── docs/           # Documentation
├── scripts/        # Utility and deployment scripts
├── releases/       # Pre-built release artifacts
├── LICENSE
└── README.md

Getting Started
Prerequisites

Go (for backend)

Android Studio (for Android app)

Modern web browser

SQLite / PostgreSQL

Backend

cd backend
go run main.go

Web

Configure backend URL

Serve static files or use Go templates

Android

Open android/ in Android Studio

Configure API base URL

Build and run on device or emulator

Detailed setup instructions are available in the docs/ directory.

Documentation

Comprehensive documentation is available under docs/, including:

Installation and setup guides

System architecture

API reference

Database schema

User and admin manuals

License

This project is licensed under the MIT License.
See the LICENSE file for details.

Disclaimer

This project is intended for educational, demonstration, and small-scale deployment purposes. It is not a certified medical or pharmaceutical compliance system.
