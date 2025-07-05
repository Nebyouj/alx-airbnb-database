## 4. Query Optimization Report

### Original Query:
Joins bookings with users, properties, and payments.
```sql
SELECT b.*, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;
```

### Refactored Query:
Includes only necessary columns and filters.
```sql
SELECT b.id, u.name, p.title, pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.status = 'confirmed';
```

Using `EXPLAIN`, performance improved by reducing result set and avoiding unnecessary data load.