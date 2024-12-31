# Having Clause:

The `HAVING` clause is used to filter records after the `GROUP BY` operation based on aggregate functions. Unlike the `WHERE` clause, which filters rows before grouping, `HAVING` filters groups.

## Syntax:
```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1
HAVING aggregate_function(column2) condition;
```

## Example:
### Using HAVING Clause:
```sql
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(emp_id) > 10;
```

In this example, only departments with more than 10 employees will be displayed.

---

# GROUP BY ROLLUP:

The `ROLLUP` operator is used with `GROUP BY` to generate subtotals and a grand total in a single query. It is particularly useful for reporting purposes.

## Syntax:
```sql
SELECT column1, column2, aggregate_function(column3)
FROM table_name
GROUP BY ROLLUP (column1, column2);
```

## Example:
### Using GROUP BY ROLLUP:
```sql
SELECT department, job_title, SUM(salary) AS total_salary
FROM employees
GROUP BY ROLLUP (department, job_title);
```

### Output Explanation:
1. Subtotals for each `job_title` within a `department`.
2. Subtotals for each `department`.
3. A grand total for all salaries.

## Key Points:
- The `ROLLUP` operator creates a hierarchy of subtotals.
- It reduces the need for multiple queries for generating subtotal data.
- Null values in the output indicate subtotals or grand totals.
