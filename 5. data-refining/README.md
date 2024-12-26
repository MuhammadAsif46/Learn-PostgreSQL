# Clauses and Operators in PostgreSQL

This guide provides an overview of commonly used clauses and operators in PostgreSQL for querying and managing data effectively.

---

## Clauses
Clauses are used to refine and manipulate data retrieval from a database.

### 1. **WHERE Clause**
- Filters records based on specified conditions.
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE salary > 50000;
  ```

### 2. **DISTINCT Clause**
- Removes duplicate records from the result set.
- **Example:**
  ```sql
  SELECT DISTINCT department
  FROM employees;
  ```

### 3. **ORDER BY Clause**
- Sorts the result set in ascending (`ASC`) or descending (`DESC`) order.
- **Example:**
  ```sql
  SELECT * FROM employees
  ORDER BY salary DESC;
  ```

### 4. **LIMIT Clause**
- Restricts the number of rows returned by a query.
- **Example:**
  ```sql
  SELECT * FROM employees
  LIMIT 10;
  ```

### 5. **LIKE Clause**
- Searches for patterns in a column using wildcards (`%` for multiple characters and `_` for a single character).
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE name LIKE 'A%';
  ```

---

## Logical and Relational Operators
Logical and relational operators are used to combine or compare conditions in queries.

### Logical Operators:

#### **1. AND**
- Both conditions must be true.
- **Syntax:**
  ```sql
  condition1 AND condition2
  ```
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE salary > 50000 AND department = 'IT';
  ```

#### **2. OR**
- Either of the conditions must be true.
- **Syntax:**
  ```sql
  condition1 OR condition2
  ```
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE department = 'IT' OR department = 'HR';
  ```

#### **3. IN**
- Matches a value against a list of values.
- **Syntax:**
  ```sql
  column IN (value1, value2, ...)
  ```
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE department IN ('IT', 'HR', 'Finance');
  ```

#### **4. NOT IN**
- Excludes values from a list.
- **Syntax:**
  ```sql
  column NOT IN (value1, value2, ...)
  ```
- **Example:**
  ```sql
  SELECT * FROM employees
  WHERE department NOT IN ('Sales', 'Marketing');
  ```

---

This guide outlines essential PostgreSQL clauses and logical operators to help you query and manage data effectively.

