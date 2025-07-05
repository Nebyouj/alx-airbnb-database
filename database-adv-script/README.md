## 0. Complex Queries with Joins

### INNER JOIN
Retrieves all bookings and the users who made those bookings.
```sql
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
```

### LEFT JOIN
Fetches all properties and any associated reviews. If a property has no reviews, it will still be included.
```sql
SELECT properties.*, reviews.*
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;
```

### FULL OUTER JOIN
Lists all users and all bookings. Includes users without bookings and bookings not linked to a user.
```sql
SELECT users.*, bookings.*
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
```

---

## 1. Subqueries

### Non-Correlated Subquery
Finds properties where the average rating from reviews exceeds 4.0.
```sql
SELECT *
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);
```

### Correlated Subquery
Finds users who have made more than 3 bookings.
```sql
SELECT *
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
```

---

## 2. Aggregations and Window Functions

### Total Bookings by User
Groups bookings by user and counts total bookings.
```sql
SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;
```

### Ranking Properties
Ranks properties based on number of bookings using RANK.
```sql
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM bookings
GROUP BY property_id;
```

---
