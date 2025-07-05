-- Partition bookings table by start_date (PostgreSQL example)
CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Example query to test partition performance
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';