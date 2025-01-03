- TRIGGERS:

1. Use Case
Create a Trigger so that
If we insert/update negative salary in a table, it will be triggered and set it to 0.


-- create function 
CREATE OR REPLACE FUNCTION check_salary()
RETURN TRIGGER AS $$

BEGIN
    IF NEW.salary < 0 THEN
        NEW.salary := 0;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


-- Trigger:
CREATE TRIGGER before_update_salary
BEFORE UPDATE ON employees
FOR EACH ROW
EXECUTE FUNCTION check_salary();

