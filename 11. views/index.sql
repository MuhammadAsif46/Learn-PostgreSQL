-- create view tabel:

CREATE VIEW billing_info AS
SELECT 
	c.cust_name AS customer_name,
	o.ord_date AS order_date, 
	p.p_name AS product_name, 
	p.price AS product_price,
	oi.quantity AS product_quantity,
	(oi.quantity * p.price) AS total_price
	FROM order_items oi
JOIN products p ON oi.p_id = p.p_id
JOIN orders o ON oi.ord_id = o.ord_id
JOIN customers c ON o.cust_id = c.cust_id;
