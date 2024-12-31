## TASK StoreDB:

Create a one-to-many and many-to-many relationship in a shopping store context using four tables:

customers
orders
products
order_items

Include a price column in the products table and display the relationship between customers and their orders, 
along with the details of the products in each order.


-- customer table:
CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

INSERT INTO customers (cust_name)
VALUES
    ('Ali'), ('Raza'), ('Ahmed'), ('Fahad');

 
-- order table:
CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO orders (ord_date, cust_id)
VALUES
    ('2024-01-01', 1),  -- Raju first order
    ('2024-02-01', 2),  -- Sham first order
    ('2024-03-01', 3),  -- Paul first order
    ('2024-04-04', 2);  -- Sham second order


-- order_items table:
CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY (p_id) REFERENCES products(p_id)
);

INSERT INTO order_items (ord_id, p_id, quantity)
VALUES
    (1, 1, 1),  -- Raju ordered 1 Laptop
    (1, 4, 2),  -- Raju ordered 2 Cables
    (2, 1, 1),  -- Sham ordered 1 Laptop
    (3, 2, 1),  -- Paul ordered 1 Mouse
    (3, 4, 5),  -- Paul ordered 5 Cables
    (4, 3, 1);  -- Sham ordered 1 Keyboard


-- products table:
CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC NOT NULL
);

INSERT INTO products (p_name, price)
VALUES
    ('Laptop', 55000.00),
    ('Mouse', 500),
    ('Keyboard', 800.00),
    ('Cable', 250.00)
;


-- RESULT Query:

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


