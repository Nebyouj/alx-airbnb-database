-- Initial complex query with multiple joins
EXPLAIN ANALYZE
SELECT b.*, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- Refactored version using fewer columns and filters for optimization
EXPLAIN ANALYZE
SELECT b.id, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed' AND pay.status = 'paid';