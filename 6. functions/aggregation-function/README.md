# Aggregation Functions in PostgreSQL

Aggregation functions in PostgreSQL are used to perform calculations on multiple rows of a table and return a single result.

---

## Common Aggregation Functions

### 1. **COUNT**

- Returns the number of rows that match a specified condition.
- **Example:**
  ```sql
  SELECT COUNT(emp_id) AS employees
  FROM employees;
  ```

### 2. **SUM**

- Calculates the total sum of a numeric column.
- **Example:**
  ```sql
  SELECT SUM(salary) AS total_salary
  FROM employees;
  ```

### 3. **AVG**

- Computes the average value of a numeric column.
- **Example:**
  ```sql
  SELECT AVG(salary) AS average_salary
  FROM employees;
  ```

### 4. **MIN**

- Finds the smallest value in a column.
- **Example:**
  ```sql
  SELECT MIN(salary) AS lowest_salary
  FROM employees;
  ```

### 5. **MAX**

- Finds the largest value in a column.
- **Example:**
  ```sql
  SELECT MAX(salary) AS highest_salary
  FROM employees;
  ```

---

This guide covers the essential aggregation functions in PostgreSQL to help you analyze and summarize data effectively.
