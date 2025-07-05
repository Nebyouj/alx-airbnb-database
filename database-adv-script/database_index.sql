-- Indexes to improve performance
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON reviews(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);

-- Measure performance before and after using EXPLAIN ANALYZE
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;
EXPLAIN ANALYZE SELECT * FROM reviews WHERE property_id = 10;
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';