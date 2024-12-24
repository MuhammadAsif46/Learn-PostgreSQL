# DataTypes and Constraints in PostgreSQL

This guide provides an overview of common data types and constraints used in PostgreSQL to design effective and efficient databases.

## DataTypes
Data types define the kind of data that can be stored in a column of a table.

### Commonly Used Data Types:
1. **Numeric**:
   - `INT`
   - `DOUBLE`
   - `FLOAT`
   - `DECIMAL`
2. **String**:
   - `VARCHAR` (Variable-length character string)
3. **Date**:
   - `DATE` (Date values)
4. **Boolean**:
   - `BOOLEAN` (True/False values)

---

## Constraints
Constraints are rules applied to columns to enforce data integrity and consistency.

### Types of Constraints:

#### 1. **Primary Key**
- Uniquely identifies each record in a table.
- Must contain unique values and cannot contain `NULL` values.
- A table can have only **ONE** primary key.

**Example:**
```sql
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);
```

#### 2. **Not Null**
- Ensures that a column cannot have a `NULL` value.

**Example:**
```sql
CREATE TABLE customers (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL
);
```

#### 3. **Default Value**
- Assigns a default value to a column if no value is provided.

**Example:**
```sql
CREATE TABLE accounts (
    acc_no INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    acc_type VARCHAR(50) NOT NULL DEFAULT 'Savings'
);
```

#### 4. **Auto Increment**
- Automatically generates unique values for a column.
- Uses the `SERIAL` keyword.

**Example:**
```sql
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50)
);
```

---

This guide covers the essential data types and constraints used in PostgreSQL to help you design reliable databases.
