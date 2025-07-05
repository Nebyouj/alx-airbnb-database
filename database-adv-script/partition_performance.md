## 5. Partitioning Report

### Table Partitioning:
Implemented partitioning on `bookings(start_date)`.
```sql
CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');
```

### Observations:
- Querying recent bookings by date is significantly faster.
- Partition pruning ensures only relevant data is scanned.