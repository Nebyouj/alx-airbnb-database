## 3. Indexes for Optimization

### Created Indexes:
```sql
CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON reviews(property_id);
CREATE INDEX idx_start_date ON bookings(start_date);
```

These indexes improve query performance by optimizing lookup on JOIN, WHERE, and ORDER BY operations.
