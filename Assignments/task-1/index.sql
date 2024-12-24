CREATE DATABASE bank_db;

CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    dept VARCHAR(50),
    salary DECIMAL(10, 2) NOT NULL DEFAULT 30000.00,
    hire_date DATE NOT NULL DEFAULT "CURRENT_DATE",
)

SELECT * FROM employees;

INSERT INTO employees (emp_id, fname, lname, email, dept, salary, hire_date) 
VALUES
(1, 'Ali', 'Raza', 'ali.raza@example.com', 'IT', 50000.00, '2020-01-15'),
(2, 'Asif', 'Ali', 'asif.ali@example.com', 'HR', 45000.00, '2019-03-22'),
(3, 'Ahmed', 'Ashraf', 'ahmed.ashraf@example.com', 'IT', 55000.00, '2021-06-01'),
(4, 'Salam', 'Bhai', 'salam.bhau@example.com', 'Finance', 60000.00, '2018-07-30'),
(5, 'Altaf', 'Bhai', 'altaf.bhai@example.com', 'HR', 47000.00, '2020-11-10'),
(6, 'Kamal', 'Bhai', 'kamal.bhai@example.com', 'Marketing', 52000.00, '2020-09-25'),
(7, 'Ustad', 'Bhai', 'ustad.bhai@example.com', 'IT', 48000.00, '2019-05-18'),
(8, 'Json', 'Bhai', 'json.bhai@example.com', 'IT', 53000.00, '2021-02-14'),
(9, 'Hello', 'Bhai', 'hello.bhai@example.com', 'Finance', 61000.00, '2018-12-03'),
(10, 'Nasir', 'Bhai', 'nasir.bhai@example.com', 'Marketing', 50000.00, '2020-04-19');