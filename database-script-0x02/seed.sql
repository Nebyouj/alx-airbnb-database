INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('uuid-1', 'Nebyou', 'Damtew', 'neb@alx.com', 'hashed_password', '0912345678', 'guest'),
('uuid-2', 'Sara', 'Kebede', 'sara@alx.com', 'hashed_password', '0923456789', 'host'),
('uuid-3', 'Jonas', 'Meles', 'jonas@alx.com', 'hashed_password', '0934567890', 'guest');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('prop-1', 'uuid-2', 'Cozy Apartment', 'A modern apartment in the city center', 'Addis Ababa', 55.00),
('prop-2', 'uuid-2', 'Garden Villa', 'Spacious villa with a garden', 'Bahir Dar', 80.00);

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book-1', 'prop-1', 'uuid-1', '2025-07-01', '2025-07-05', 220.00, 'confirmed'),
('book-2', 'prop-2', 'uuid-3', '2025-08-10', '2025-08-15', 400.00, 'pending');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay-1', 'book-1', 220.00, 'credit_card'),
('pay-2', 'book-2', 400.00, 'paypal');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev-1', 'prop-1', 'uuid-1', 5, 'Amazing experience, very clean and quiet.'),
('rev-2', 'prop-2', 'uuid-3', 4, 'Nice place but a bit far from town.');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-1', 'uuid-1', 'uuid-2', 'Hello, is the apartment available for the weekend?'),
('msg-2', 'uuid-2', 'uuid-1', 'Yes, it is available. Feel free to book it.');