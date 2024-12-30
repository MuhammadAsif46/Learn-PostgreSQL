-- OUTPUT: id:firstname:lastname:dept


-> Excersize 01:    -- OUTPUT: 1:Ali:Raza:IT
SELECT CONCAT_WS(':',emp_id,fname,lname,dept) from employees where emp_id = 1;

-> Excersize 02:    -- OUTPUT: 1:Ali Raza:IT:50000
SELECT CONCAT_WS(':',emp_id,CONCAT_WS(' ',fname,lname) ,dept,salary) from employees where emp_id = 1;

-> Excersize 03:    -- OUTPUT: 4:Salam:FINANACE
SELECT CONCAT_WS(':', emp_id,fname, UPPER(dept)) from employees where emp_id = 4;

-> Excersize 04:    -- OUTPUT: I1 Ali and H2 Asif and so on ....
SELECT CONCAT(LEFT(dept,1),emp_id),fname from employees;


