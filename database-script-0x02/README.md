# Sample Data Seeding: ALX Airbnb Clone

This file (`seed.sql`) populates the database with initial test data for development and testing purposes.

## 🔢 Tables Seeded

- `User`: 3 sample users with different roles (guest, host).
- `Property`: 2 properties hosted by a user.
- `Booking`: 2 bookings made by guests.
- `Payment`: 2 payment records tied to bookings.
- `Review`: 2 user reviews for properties.
- `Message`: 2 user-to-user messages simulating a chat.

## 🧪 Sample Usage

These entries are realistic enough to simulate:
- Property search and booking flow
- Booking confirmation and payment flow
- User interaction and review system

## 🔑 Notes

- UUIDs are placeholder strings like `uuid-1`, `prop-1`, etc.
- Data is structured to test relationships and constraints.
- Intended for local or staging environments, not production.

## 📁 Location

- File: `seed.sql`
- Directory: `database-script-0x02`
