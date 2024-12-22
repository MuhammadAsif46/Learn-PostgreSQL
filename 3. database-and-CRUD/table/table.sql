-- Create Table
CREATE TABLE person (
    id INT,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Insert column and values
INSERT INTO person (id, name, city)
VALUE 
(101,"Ali","Karachi"),
(102,'Ahmed','Lahore'),
(103,'Raza','Lahore'),
(104,'Farhan','Multan'),
(105,'Fahad','Karachi');


-- get Data
SELECT * FROM person;

SELECT city FROM person;
SELECT name,city FROM person;


-- update data

UPDATE person SET city='Islamabad' WHERE id=104;

-- delete data

DELETE FROM person WHERE id=105;


