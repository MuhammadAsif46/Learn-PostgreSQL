# ALTER TABLE:

- How to add and remove a table column?

### ADD:
```sql
ALTER TABLE person ADD COLUMN age INT;
ALTER TABLE person ADD COLUMN age INT DEFAULT 0;
```

### REMOVE:
```sql
ALTER TABLE person DROP COLUMN age;
```

- How to rename a column and table name?

### Rename a column:
```sql
ALTER TABLE person RENAME COLUMN name TO full_name;
```

### Rename a table:
```sql
ALTER TABLE person RENAME TO person_db;
```

- How to modify a column?

### Changing datatype or adding default values, etc.:

#### Add default value to a column:
```sql
ALTER TABLE person
ALTER COLUMN full_name
SET DATA TYPE VARCHAR(200);

ALTER TABLE person
ALTER COLUMN full_name
SET DEFAULT 'unknown';
```

#### Remove default value from a column:
```sql
ALTER TABLE person
ALTER COLUMN full_name
DROP DEFAULT;
```

#### Set NOT NULL constraint:
```sql
ALTER TABLE person
ALTER COLUMN full_name
SET NOT NULL;
```

- Check Constraints:
```sql
ALTER TABLE person
ADD COLUMN mobile VARCHAR(15)
CHECK (LENGTH(mobile) >= 10);
```

- Drop Constraint:
```sql
ALTER TABLE person
DROP CONSTRAINT person_mobile_check;
```

- Add Constraint:
```sql
ALTER TABLE person
ADD CONSTRAINT mob_not_null CHECK (mob IS NOT NULL);
```

- Named constraint:
```sql
CREATE TABLE user (
    name VARCHAR(100),
    mob VARCHAR(15) UNIQUE,
    CONSTRAINT mob_no_less_than_10digits CHECK (LENGTH(mob) >= 5)
);
```