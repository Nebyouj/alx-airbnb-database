-- Total bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Rank properties based on total bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id;

SELECT 
    user_id, 
    id AS booking_id,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY start_date) AS booking_rank
FROM bookings;
