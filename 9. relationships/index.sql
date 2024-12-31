1. ONE TO Many Relationship:


CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
)

CREATE TABLE orders(
    ord_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    price NUMERIC NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);



INSERT INTO customers 
(cust_name) 
VALUES 
('John Doe'), 
('Jane Smith'), 
('Michael Johnson'),
('Alex');

INSERT INTO orders 
(order_date, price, cust_id) 
VALUES 
('2024-01-01', 250.00, 1),
('2024-01-15', 300.00, 1),
('2024-02-01', 150.00, 2),
('2024-03-01', 450.00, 3),
('2024-04-04', 500.00, 2);



2. Many TO Many Relationship:



CREATE TABLE courses (
    c_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fee NUMERIC NOT NULL
);

INSERT INTO courses (name, fee)
VALUES
('Mathematics', 500.00),
('Physics', 600.00),
('Chemistry', 700.00);

CREATE TABLE students (
    s_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO Students (name) VALUES
('Raju'),
('Sham'),
('Alex');


CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL,
    c_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (s_id) REFERENCES students(s_id),
    FOREIGN KEY (c_id) REFERENCES courses(c_id)
);

INSERT INTO enrollment (s_id, c_id, enrollment_date)
VALUES
(1, 1, '2024-01-01'), -- Raju enrolled in Mathematics
(1, 2, '2024-01-15'), -- Raju enrolled in Physics
(2, 1, '2024-02-01'), -- Sham enrolled in Mathematics
(2, 3, '2024-02-15'), -- Sham enrolled in Chemistry
(3, 3, '2024-03-25'); -- Alex enrolled in Chemistry


-- Add Joining 3 tables:

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollment;

SELECT
	e.enrollment_id,
	s.name AS student_name, 
	c.name AS course_name, 
	c.fee, 
	e.enrollment_date  
	FROM enrollment e
JOIN students s ON e.s_id = s.s_id
JOIN courses c ON c.c_id = e.c_id







