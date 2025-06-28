# Entity-Relationship Diagram (ERD) - Airbnb Clone

## Entities and Attributes

### User
- user_id (PK)
- first_name
- last_name
- email (unique, indexed)
- password_hash
- phone_number
- role (ENUM: guest, host, admin)
- created_at

### Property
- property_id (PK)
- host_id (FK → User)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### Booking
- booking_id (PK)
- property_id (FK → Property)
- user_id (FK → User)
- start_date
- end_date
- total_price
- status (ENUM)
- created_at

### Payment
- payment_id (PK)
- booking_id (FK → Booking)
- amount
- payment_date
- payment_method (ENUM)

### Review
- review_id (PK)
- property_id (FK → Property)
- user_id (FK → User)
- rating (1–5)
- comment
- created_at

### Message
- message_id (PK)
- sender_id (FK → User)
- recipient_id (FK → User)
- message_body
- sent_at

## Relationships
- A user can host many properties.
- A user can book many properties.
- A booking belongs to one user and one property.
- A payment belongs to one booking.
- A review belongs to one user and one property.
- A user can send/receive many messages.

---

[ERD](https://chatgpt.com/s/m_6860322ce0248191bae95f173411b0dc)

