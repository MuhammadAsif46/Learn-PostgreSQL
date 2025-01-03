# TRIGGERS

Triggers are special procedures in a database that automatically execute predefined actions in response to certain events on a specified table or view.

---

## Key Features:
1. **Automation**: Automatically execute when a specific event occurs in a table or view.
2. **Event-driven**: Activated by events such as `INSERT`, `UPDATE`, `DELETE`, or `TRUNCATE`.
3. **Execution Types**:
   - `BEFORE`: Executes the trigger action before the event occurs.
   - `AFTER`: Executes the trigger action after the event occurs.
   - `INSTEAD OF`: Used with views to define actions instead of the triggering event.

---

## Syntax for Creating a Trigger

```sql
CREATE TRIGGER trigger_name 
{BEFORE | AFTER | INSTEAD OF} {INSERT | DELETE | UPDATE | TRUNCATE}
ON table_name
FOR EACH {ROW | STATEMENT}
EXECUTE FUNCTION trigger_function_name();
```

## Example of Trigger Function

```sql 
CREATE OR REPLACE FUNCTION trigger_function_name()
RETURNS TRIGGER AS $$
BEGIN
    -- Trigger logic here
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

```


## Examples
1. **Trigger**: to Automatically Update a Timestamp on Insert

```sql
CREATE OR REPLACE FUNCTION set_created_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.created_at := NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_created_at_trigger
BEFORE INSERT ON employees
FOR EACH ROW
EXECUTE FUNCTION set_created_at();

```

2. **Trigger**: to Log Changes on Update
```sql
CREATE OR REPLACE FUNCTION log_salary_changes()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO salary_log (emp_id, old_salary, new_salary, updated_at)
    VALUES (OLD.emp_id, OLD.salary, NEW.salary, NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER log_salary_changes_trigger
AFTER UPDATE OF salary ON employees
FOR EACH ROW
EXECUTE FUNCTION log_salary_changes();

```

3. **Trigger**: to Prevent Deletion of Records
```sql
CREATE OR REPLACE FUNCTION prevent_deletion()
RETURNS TRIGGER AS $$
BEGIN
    RAISE EXCEPTION 'Deletion is not allowed on this table!';
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER prevent_deletion_trigger
BEFORE DELETE ON employees
FOR EACH ROW
EXECUTE FUNCTION prevent_deletion();

```

4. **Trigger**: for Auditing Changes

```sql
CREATE OR REPLACE FUNCTION audit_changes()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_log (table_name, operation, changed_at)
    VALUES (TG_TABLE_NAME, TG_OP, NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER audit_trigger
AFTER INSERT OR UPDATE OR DELETE ON employees
FOR EACH ROW
EXECUTE FUNCTION audit_changes();

```