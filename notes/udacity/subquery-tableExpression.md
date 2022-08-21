## Subquery
- Whenever we need to use existing tables to create a new table that we then want to query again
- Allow us to answer more complex questions than we can do with a single database table.
- Inner query runs first, then the outer query run across the result set created by inner query

```
SELECT *
FROM table
(
  -- subsqeury here
  SELECT ....
  FROM ...
  GROUP BY...
  ORDER BY... 
  
 ) sub
```

## Subquery Example (Subquery as source for outer query)
1. Find the number of events occur for each day for each channel
```
SELECT DATE_TRUNC('day', occurred_at) as day,
	     channel,
       COUNT(*) as event_count
FROM web_events
GROUP BY 1, 2;
```
2. Find the average number of events for each channel.
```
SELECT channel, AVG(event_count)
FROM
(SELECT DATE_TRUNC('day', occurred_at) as day,
	     channel,
       COUNT(*) as event_count
FROM web_events
GROUP BY 1, 2
) sub
GROUP BY 1;
```
## Subquery as Condition
- Display orders in months with least orders
- In this examples, it workds bcs the result of inner query is only one cell.
- Use `IN` for inner query result with more than one row.
```
SELECT *
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
       ( SELECT DATE_TRUNC('month', MIN(occurred_at)) AS min_month
          FROM orders
	)
```
