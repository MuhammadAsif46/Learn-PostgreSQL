# CTE

## Common Table Expression

CTE (Common Table Expression) is a temporary result set that you can define within a query to simplify complex SQL statements.

### Use Case Example

We want to calculate the average salary per department and then find all employees whose salary is above the average salary of their department.

```sql
WITH AvgSal AS (
  SELECT
    dept, 
    AVG(salary) AS avg_salary 
  FROM employees
  GROUP BY dept
)

SELECT
  e.emp_id,
  e.fname,
  e.dept,
  e.salary,
  a.avg_salary
FROM
  employees e
JOIN
  AvgSal a ON e.dept = a.dept
WHERE
  e.salary > a.avg_salary;
```

### Points to Note
- Once a CTE has been created, it can only be used once within the query.
- It is not persisted and exists only during the execution of the query.