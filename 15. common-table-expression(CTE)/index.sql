        CTE
Common Table Expression 



1- Use Cases X- 2

We want to find the highest-paid employee in each department.


WITH HighestPaid AS (
    SELECT 
        dept, 
        MAX(salary) AS max_salary
    FROM 
        employees
    GROUP BY 
        dept
)
SELECT 
    e.emp_id,
    e.fname, 
    e.lname, 
    e.desig, 
    e.dept, 
    e.salary
FROM 
    employees e
JOIN 
    HighestPaid h ON e.dept = h.dept AND e.salary = h.max_salary