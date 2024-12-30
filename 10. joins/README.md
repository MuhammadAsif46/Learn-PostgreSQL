# Join:

Join operation is used to combine rows from two or more tables based on a related column between them.

## Types of Join:

### 1. Cross Join
- Combines every row from one table with every row from another table.
- Example:
  ```sql
  SELECT *
  FROM table1
  CROSS JOIN table2;
  ```

### 2. Inner Join
- Returns only the rows where there is a match between the specified columns in both the left (or first) and right (or second) tables.
- Example:
  ```sql
  SELECT *
  FROM table1
  INNER JOIN table2
  ON table1.column_name = table2.column_name;
  ```

### 3. Left Join
- Returns all rows from the left (or first) table and the matching rows from the right (or second) table.
- Non-matching rows from the right table will contain NULL values.
- Example:
  ```sql
  SELECT *
  FROM table1
  LEFT JOIN table2
  ON table1.column_name = table2.column_name;
  ```

### 4. Right Join
- Returns all rows from the right (or second) table and the matching rows from the left (or first) table.
- Non-matching rows from the left table will contain NULL values.
- Example:
  ```sql
  SELECT *
  FROM table1
  RIGHT JOIN table2
  ON table1.column_name = table2.column_name;
  ```
