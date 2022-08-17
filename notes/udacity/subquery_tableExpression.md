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
