----- Clauses -------

-- where clause:
SELECT * FROM employees WHERE emp_id = 5;

SELECT * FROM employees WHERE dept = 'HR';
SELECT * FROM employees WHERE salary >= 50000;

-- WHERE clause WITH OR and AND operator:
SELECT * FROM employees WHERE dept = 'HR' OR dept = 'Finance';
SELECT * FROM employees WHERE dept = 'IT' AND salary >= 50000;


-- WHERE clause with IN and NOT IN operator:
SELECT * FROM employees WHERE dept IN ('IT', 'Finance','HR');
SELECT * FROM employees WHERE dept NOT IN ('IT', 'Finance','HR');

-- WHERE clause with between and NOT IN operator:
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 65000;

-- DISTINCT:
SELECT DISTINCT dept FROM employees;

-- ORDER BY:
SELECT * FROM employees ORDER BY fname; --BY DEFAULT Ascending
SELECT * FROM employees ORDER BY fname ASC;
SELECT * FROM employees ORDER BY fname DESC;

-- LIMIT:
SELECT * FROM employees LIMIT 5;
SELECT * FROM employees LIMIT 5 OFFSET 2; --OFFSET skips the first 2 rows


-- LIKE:
SELECT * FROM employees WHERE fname LIKE 'A%';
SELECT * FROM employees WHERE fname LIKE '%a';
SELECT * FROM employees WHERE fname LIKE '%i%';
SELECT * FROM employees WHERE fname LIKE '__';
SELECT * FROM employees WHERE fname LIKE '_a%';


