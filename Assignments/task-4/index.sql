Excersize:

COUNT, GROUP BY, MIN, MAX, SUM & AVG

1. Find total no. of employees in database?

    SELECT COUNT(emp_id) from employees;

2. find no. of employees in each department?

    SELECT COUNT(emp_id),dept from employees GROUP BY dept;

3. find lowest salary paying?
    
    SELECT * FROM employees WHERE salary=(SELECT MIN(salary) FROM employees); -- 2nd way


4. find highest salary paying?

    SELECT * FROM employees ORDER BY salary DESC LIMIT 1; -- 1st way
    SELECT * FROM employees WHERE salary=(SELECT MAX(salary) FROM employees); -- 2nd way

5. find average salary paying in each department?

    SELECT AVG(salary) FROM employees GROUP BY dept;

6. find total salary paying in loan department?

    SELECT SUM(salary) FROM employees WHERE dept = 'HR';