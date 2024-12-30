CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
)

CREATE TABLE orders(
    ord_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE
    price NUMERIC NOT NULL
    cust_id INTEGER NOT NULL
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
)



INSERT INTO customers 
(cust_name) 
VALUES 
('John Doe'), 
('Jane Smith'), 
('Michael Johnson');
('Alex');

INSERT INTO orders 
(ord_date, price, cust_id) 
VALUES 
('2024-01-01', 250.00, 1),
('2024-01-15', 300.00, 1),
('2024-02-01', 150.00, 2),
('2024-03-01', 450.00, 3),
('2024-04-04', 500.00, 2),