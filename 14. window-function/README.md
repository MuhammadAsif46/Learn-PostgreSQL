
## Key Concepts
                                                                        
### WINDOW FUNCTIONS

Window functions, also known as analytic functions, allow you to perform calculations across a set of rows related to the current row. These functions are defined by an `OVER()` clause.

#### Benefits of Window Functions

1. **Advanced Analytics**: Enable complex calculations like running totals, moving averages, rank calculations, and cumulative distributions.
2. **Non-Aggregating**: Unlike aggregate functions, window functions do not collapse rows, allowing you to calculate aggregates while retaining individual row details.
3. **Flexibility**: Can be used in various SQL clauses such as `SELECT`, `ORDER BY`, and `HAVING`, offering great versatility in query design.

#### Common Window Functions

- **ROW_NUMBER()**: Assigns a unique sequential integer to rows within a partition of a result set.
  ```sql
  SELECT emp_id, salary, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY salary DESC) AS row_num
  FROM employees;
  ```

- **RANK()**: Assigns a rank to rows within a partition of a result set. Gaps are left in ranking when there are ties.
  ```sql
  SELECT emp_id, salary, RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS rank
  FROM employees;
  ```

- **DENSE_RANK()**: Similar to `RANK()`, but without gaps in ranking.
  ```sql
  SELECT emp_id, salary, DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) AS dense_rank
  FROM employees;
  ```

- **LAG()**: Accesses data from a previous row in the same result set.
  ```sql
  SELECT emp_id, salary, LAG(salary) OVER (PARTITION BY dept ORDER BY salary) AS previous_salary
  FROM employees;
  ```

- **LEAD()**: Accesses data from the next row in the same result set.
  ```sql
  SELECT emp_id, salary, LEAD(salary) OVER (PARTITION BY dept ORDER BY salary) AS next_salary
  FROM employees;
  ```

These functions provide powerful tools for advanced data analysis and reporting.
