----- Clauses -------

-- where clause:
SELECT * FROM employees WHERE emp_id = 5;

SELECT * FROM employees WHERE dept = 'HR';
SELECT * FROM employees WHERE salary >= 50000;
SELECT * FROM employees WHERE dept = 'HR' OR dept = 'Finance';
SELECT * FROM employees WHERE dept = 'IT' AND salary >= 50000 