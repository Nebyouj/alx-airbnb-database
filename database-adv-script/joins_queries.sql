-- INNER JOIN: Get all bookings and their respective users
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN: Get all properties and their reviews (including properties with no reviews)
SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN: Get all users and all bookings (even if unmatched)
SELECT users.*, bookings.*
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

