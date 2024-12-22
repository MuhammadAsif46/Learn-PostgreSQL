# Database and CRUD Operations

This guide provides an overview of essential database operations and CRUD functionalities in PostgreSQL.

## Topics Covered

### 1. **Database Operations**

#### **Creating a Database**
- **Query:**
  ```sql
  CREATE DATABASE <db_name>;
  ```

#### **Connecting to a Database**
- **Command Line:**
  ```sql
  \c <db_name>
  ```
- **pgAdmin 4:**
  - Select the database from the list.
  - Open the Query Tool to switch to the selected database.

#### **Listing Existing Databases**
- **Query:**
  ```sql
  SELECT datname FROM pg_database;
  ```
- **Command Line:**
  ```sql
  \l
  ```

#### **Deleting a Database**
- **Query:**
  ```sql
  DROP DATABASE <db_name>;
  ```

---

### 2. **CRUD Operations**
CRUD stands for Create, Read, Update, and Delete. These are the basic operations performed on a database.

#### **Create**
- **Create a new table:**
  ```sql
  CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
  );
  ```
- **Insert data into a table:**
  ```sql
  INSERT INTO table_name (column1, column2, ...)
  VALUES (value1, value2, ...);
  ```

#### **Read**
- **Query to read data from a table:**
  ```sql
  SELECT * FROM table_name;
  SELECT column1 FROM table_name;
  SELECT column1,column2,... FROM table_name;
  ```

#### **Update**
- **Update existing data in a table:**
  ```sql
  UPDATE table_name
  SET column1 = value1, column2 = value2, ...
  WHERE condition;
  ```

#### **Delete**
- **Delete specific data from a table:**
  ```sql
  DELETE FROM table_name
  WHERE condition;
  ```

---

This guide provides a quick reference for managing databases and performing CRUD operations effectively in PostgreSQL.
