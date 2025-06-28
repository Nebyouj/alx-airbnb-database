# Database Schema: ALX Airbnb Clone

This file (`schema.sql`) defines the full database schema for the Airbnb clone project, using PostgreSQL-compatible SQL.

## 📦 Tables Created

- `User`: Stores all user account information, including roles (guest, host, admin).
- `Property`: Stores property listings with links to the host user.
- `Booking`: Captures reservations made by guests for specific properties.
- `Payment`: Tracks payment transactions for bookings.
- `Review`: Allows users to leave feedback on properties.
- `Message`: Stores direct messages between users.

## 🔐 Constraints and Indexes

- Primary and foreign keys ensure data integrity across entities.
- Unique constraints (e.g., email) and enums (e.g., user roles, booking status).
- Indexes created on frequently queried fields like `email`, `property_id`, and `booking_id` for performance optimization.

## 🛠️ Technologies

- SQL (PostgreSQL flavor)
- UUIDs for primary keys
- Timestamps with defaults
- ENUM types for roles and statuses

## 📁 Location

- File: `schema.sql`
- Directory: `database-script-0x01`
