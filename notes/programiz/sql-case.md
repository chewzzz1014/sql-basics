## SQL CASE
```
SELECT  customer_id, 
        first_name,
        CASE
           WHEN age >= 18 THEN "Allowed" END AS can_vote
FROM CUSTOMERS;
```

Example: Provide 10% discount on each order if amount > 400
```
SELECT order_id, customer_id,
CASE
    WHEN amount >= 400 THEN (amount - amount * 10/100) ELSE amount
    END AS offer_price
FROM Orders;
```

## Multiple Cases
```
SELECT customer_id, first_name,
CASE
  WHEN country = "USA" THEN "United States of America"
  WHEN country = "UK" THEN "United Kingdom"
  ELSE "Unknown Country"
  END AS country_name
FROM Customers;
```


