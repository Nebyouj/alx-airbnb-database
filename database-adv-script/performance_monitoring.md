## 6. Performance Monitoring Report

### Tools Used:
- `EXPLAIN`
- `ANALYZE`

### Bottlenecks Found:
- Full table scans on bookings without indexes.
- JOINs without indexes on keys.

### Fixes:
- Added indexes.
- Filtered rows before JOIN.
- Used limited SELECT columns.

### Results:
- Query execution time reduced by ~60%
- Reduced disk I/O and memory usage.