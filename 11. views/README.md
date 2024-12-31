# CREATE VIEW

A view is a virtual table based on the result-set of an SQL query. It does not store data itself but displays data stored in other tables. Views are used to simplify complex queries and improve security by restricting access to certain columns or rows.

## Syntax:
```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

## Example:
### Creating a View:
```sql
CREATE VIEW employee_view AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'HR';
```

### Querying the View:
```sql
SELECT * FROM employee_view;
```

### Updating Data Through a View:
- If the view is updatable, you can use `INSERT`, `UPDATE`, or `DELETE` on it.
```sql
UPDATE employee_view
SET salary = salary + 1000
WHERE emp_id = 101;
```

### Dropping a View:
```sql
DROP VIEW employee_view;
```

## Key Points:
- Views simplify access to data.
- They enhance security by limiting data exposure.
- Some views are not updatable, depending on their complexity.
- A view's result is dynamically generated when queried.
