-- CASE Expression:

-- example: 1
SELECT fname,salary,
CASE 
WHEN salary >= 60000 THEN 'high salary'
WHEN salary >= 45000 AND salary < 55000 THEN 'Medium salary'
ELSE 'Low salary' 
END AS sal_cat
FROM employees;

-- example: 2
SELECT fname,salary,
CASE 
WHEN salary > 55000 THEN 'high salary'
WHEN salary BETWEEN 45000 AND 55000 THEN 'Medium salary'
ELSE 'Low salary' 
END AS sal_cat
FROM employees;

-- example: 3
SELECT fname,salary,
CASE 
WHEN salary >= 60000 THEN 'high salary'
WHEN salary >= 50000 THEN 'Medium salary'
ELSE 'Low salary' 
END AS sal_cat
FROM employees;
