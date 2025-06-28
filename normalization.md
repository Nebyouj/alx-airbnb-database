### 📁 `normalization.md`
```md
# Database Normalization

Our database schema is normalized to **Third Normal Form (3NF)**.

### First Normal Form (1NF)
- Each column contains atomic values (e.g., `phone_number`, `email`, etc.)
- No repeating groups or arrays.

### Second Normal Form (2NF)
- All non-key attributes depend on the full primary key.
- Partial dependencies avoided by separating `Booking`, `Payment`, `Review`, etc.

### Third Normal Form (3NF)
- All non-key attributes depend only on the primary key.
- No transitive dependencies exist (e.g., `User` info is not stored in `Booking`).

### Example Improvements
- Payments are separated from Bookings.
- Reviews are in a separate table to avoid redundancy.
- Messaging system is isolated from User.