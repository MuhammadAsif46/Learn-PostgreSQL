SELECT * FROM customers;
SELECT * FROM orders;

1. Cross Join:

SELECT * FROM customers CROSS JOIN orders;

2. Inner Join:

SELECT c.cust_name, COUNT(ord_id) FROM customers c
INNER JOIN 
orders o
ON c.cust_id = o.cust_id GROUP BY cust_name;

3. Left Join:

SELECT * FROM customers c
LEFT JOIN 
orders o
ON c.cust_id = o.cust_id;

4. Right Join:

SELECT * FROM customers c
RIGHT JOIN 
orders o
ON c.cust_id = o.cust_id;

SELECT * FROM orders o
RIGHT JOIN 
customers c
ON c.cust_id = o.cust_id;

