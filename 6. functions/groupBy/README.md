## GROUP BY Clause

The `GROUP BY` clause groups rows that have the same values in specified columns into summary rows. It is often used with aggregation functions to perform operations on each group.

### Examples:

#### **1. Basic Grouping**

- Groups rows by department.
- **Example:**
  ```sql
  SELECT dept
  FROM employees
  GROUP BY dept;
  ```

#### **2. Counting Rows per Group**

- Counts the number of employees in each department.
- **Example:**
  ```sql
  SELECT dept, COUNT(emp_id)
  FROM employees
  GROUP BY dept;
  ```

#### **3. Counting Specific Columns per Group**

- Counts the number of first names in each department.
- **Example:**
  ```sql
  SELECT dept, COUNT(fname)
  FROM employees
  GROUP BY dept;
  ```

#### **4. Summing Values per Group**

- Calculates the total salary for each department.
- **Example:**
  ```sql
  SELECT dept, SUM(salary)
  FROM employees
  GROUP BY dept;
  ```

---

This guide covers the essential aggregation functions and `GROUP BY` clause in PostgreSQL to help you analyze and summarize data effectively.
