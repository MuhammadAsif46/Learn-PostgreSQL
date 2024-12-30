-> String Functions:

1.  CONCAT, CONCAT_WS
2.  SUNSTR
3.  LEFT, RIGHT
4.  LENGTH
5.  UPPER, LOWER
6.  TRIM, LTRIM , RTRIM
7.  REPLACE
8.  POSITION
9.  STRING_AGG


- CONCAT:
    SELECT CONCAT(fname,lname) FROM employees;

    -- Alias: --add temprary column name --
    SELECT CONCAT(fname,lname) as fullname FROM employees;

    --use multiples column ---
    SELECT emp_id, CONCAT(fname,lname) AS fullname, dept FROM employees;

- CONCAT_WS: -- (with seprate) --
    SELECT CONCAT_WS(' ', fname,lname) FROM employees;
    SELECT emp_id, CONCAT_WS('-',fname,lname,salary) AS fullname, dept FROM employees;

- SUBSTRING:
  SELECT SUBSTRING('Hello',1,5) -- output: Hello
  SELECT SUBSTR('Hello world!',7,11)  -- output: world

- REPLACE:
  SELECT REPLACE('Hello, World!', 'World!', 'Universe!') -- output: Hello, Universe!
  SELECT REPLACE(dept, 'IT', 'TECH') FROM employees;

- REVERSE:
  SELECT REVERSE(fname) FROM employees;

- LENGTH:
  SELECT LENGTH(fname) FROM employees;
  SELECT * FROM employees WHERE LENGTH(fname) > 5;

- UPPER, LOWER:
  SELECT UPPER(fname) FROM employees;
  SELECT LOWER(lname) FROM employees;

- TRIM, LTRIM, RTRIM:
  SELECT LEFT('Hello, World!',5) AS Trimmed_Left;
  SELECT RIGHT('Hello, World!',6) AS Trimmed_Right;

  SELECT TRIM('  Hello, World!  ') AS Trimmed;
  SELECT LENGTH(TRIM('  Ecostar  '));

- POSITION:
  SELECT POSITION('l' IN 'Hello World!') AS Position;

- STRING_AGG:
  SELECT STRING_AGG(DISTINCT dept, ', ') AS department_list FROM employees;

