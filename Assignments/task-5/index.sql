-- Add new bonus column for each employee salary 10% 

- Task 01:

SELECT fname,salary 
CASE 
WHEN salary > 0 THEN ROUND(salary * 0.10)
END AS bonus
FROM employees;

-- count employees from each category:

- Task 02:

SELECT
CASE 
WHEN salary >= 60000 THEN 'high salary'
WHEN salary >= 50000 THEN 'Medium salary'
ELSE 'Low salary' 
END AS sal_cat, COUNT(emp_id)
FROM employees
GROUP BY sal_cat;