# Using PostgreSQL on macOS

## Using SQL Shell and Command Line for PostgreSQL

This guide explains how to set up and use PostgreSQL on a macOS system, including SQL Shell and command line operations.

## Topics Covered

### 1. **Installing PostgreSQL on macOS**
- Use Homebrew to install PostgreSQL:
  ```bash
  brew install postgresql
  ```

### 2. **Starting PostgreSQL Service**
- Start the PostgreSQL service:
  ```bash
  brew services start postgresql
  ```
- Stop the service if needed:
  ```bash
  brew services stop postgresql
  ```

### 3. **Accessing PostgreSQL via Terminal**
- Open a terminal and run:
  ```bash
  psql -U postgres
  ```
- If prompted, enter the password set during installation.

### 4. **Accessing Databases with SQL Shell**
- **List all databases:**
  ```sql
  \list
  ```
  Displays a list of all available databases.

- **Clear the screen:**
  ```
  \! clear
  ```
  Clears the SQL Shell console for a fresh view.

- **Create a new database:**
  ```sql
  CREATE DATABASE test;
  ```
  Example command to create a database named `test`.

### 5. **Connecting Between Databases**
To switch from one database to another:
- Use the `\c` command followed by the target database name:
  ```sql
  \c <target_database_name>
  ```
  Example:
  ```sql
  \c my_second_database
  ```
  This connects you to `my_second_database` from the current session.

### 6. **Exiting PostgreSQL**
- To exit the PostgreSQL prompt:
  ```sql
  \q
  ```

### 7. **Additional Tips**
- **View tables in a database:**
  ```sql
  \dt
  ```
- **Restart the PostgreSQL service:**
  ```bash
  brew services restart postgresql
  ```

---

This guide provides the foundational steps for using PostgreSQL on macOS. Follow these steps to explore and manage your databases effectively.
