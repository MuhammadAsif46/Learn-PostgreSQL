# STORED Routine

An SQL statement or a set of SQL statements that can be stored on the database server and called multiple times.

## Types of STORED Routine

1. **STORED Procedure**
2. **User-defined Functions**

---

# **STORED Procedure**

A set of SQL statements and procedural logic that can perform operations such as inserting, updating, deleting, and querying data.

### Example 1: Updating Employee Salary
```sql
CREATE OR REPLACE PROCEDURE update_emp_salary(
    p_employee_id INT,
    p_new_salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = p_new_salary
    WHERE emp_id = p_employee_id;
END;
$$;
```

### Example 2: Adding a New Employee
```sql
CREATE OR REPLACE PROCEDURE add_employee(
    p_fname VARCHAR,
    p_lname VARCHAR,
    p_email VARCHAR,
    p_dept VARCHAR,
    p_salary NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (fname, lname, email, dept, salary)
    VALUES (p_fname, p_lname, p_email, p_dept, p_salary);
END;
$$;
```

---

# **User-defined Functions**

Custom functions created by the user to perform specific operations and return a value. These functions allow for reusable and modular code, enhancing database functionality and reducing redundancy.

### Key Characteristics:
- Accepts input parameters.
- Returns a single value.
- Can be used in queries like a built-in function.

### Example: Calculating Annual Bonus
```sql
CREATE OR REPLACE FUNCTION calculate_bonus(
    p_salary NUMERIC
) RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN p_salary * 0.10; -- 10% of the salary as bonus
END;
$$;
```

This function can be used in a query as follows:
```sql
SELECT fname, lname, calculate_bonus(salary) AS bonus
FROM employees;
```
