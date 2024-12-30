Excersize:

DISTINCT, ORDER BY, LIKE & LIMIT

-> 1. find different types of departments in database?

    SELECT DISTINCT dept FROM employees; 

-> 2. display records with high-low salary?

    SELECT * from employees ORDER BY salary DESC;

-> 3. how to see only top 3 records from a table?

    SELECT * from employees LIMIT 3;

-> 4. show records where firstname start with letter 'A'?

    SELECT * from employees WHERE fname LIKE 'A%';

-> 5. show records where lenght of the lastname is 4 characters?

    SELECT * from employees WHERE LENGTH(lname) > 4; -- greater than
    SELECT * from employees WHERE LENGTH(lname) = 4; -- 1st way
    SELECT * from employees WHERE fname LIKE '____'; -- 2nd way

