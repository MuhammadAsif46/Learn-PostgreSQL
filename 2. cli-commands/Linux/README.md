# Using PostgreSQL on Linux

## Using SQL Shell and Command Line for PostgreSQL


This guide explains how to set up and use PostgreSQL on a Linux system, including SQL Shell and command line operations.

## Topics Covered

### 1. **Installing PostgreSQL on Linux**
- Update your system's package index:
  ```bash
  sudo apt update
  ```
- Install PostgreSQL:
  ```bash
  sudo apt install postgresql postgresql-contrib
  ```

### 2. **Starting PostgreSQL Service**
- Start the PostgreSQL service:
  ```bash
  sudo systemctl start postgresql
  ```
- Enable the service to start on boot:
  ```bash
  sudo systemctl enable postgresql
  ```

### 3. **Accessing PostgreSQL via Terminal**
- Switch to the PostgreSQL user account:
  ```bash
  sudo -i -u postgres
  ```
- Open the PostgreSQL prompt:
  ```bash
  psql
  ```

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

---

This guide provides the foundational steps for using PostgreSQL on a Linux system. Follow these steps to explore and manage your databases effectively.