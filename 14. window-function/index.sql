- Window Functions:


SELECT 
fname,salary,
SUM(salary) 
OVER(ORDER BY salary) -- running SUM/COUNT
FROM employees


- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- LEAD()


- ROW_NUMBER:
    SELECT 
    ROW_NUMBER() OVER(ORDER BY salary ),
    fname, dept, salary 
    FROM employees;

    SELECT 
    ROW_NUMBER() OVER(PARTITION BY dept ),
    fname, dept, salary 
    FROM employees

- RANK:
    SELECT 
    RANK() OVER(ORDER BY salary DESC),
    fname, dept, salary 
    FROM employees;


- DENSE_RANK:
    SELECT 
    DENSE_RANK() OVER(ORDER BY salary DESC),
    fname, dept, salary 
    FROM employees;

- LAG:
    SELECT 
    fname, salary,
    LAG(salary, 1) OVER(ORDER BY salary) AS prev_salary
    FROM employees;     

-  LEAD:
    SELECT 
    fname, salary,
    LEAD(salary, 1) OVER(ORDER BY salary) AS next_salary
    FROM employees;