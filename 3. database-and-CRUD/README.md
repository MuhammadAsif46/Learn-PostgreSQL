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


