# Using PostgreSQL on Windows

## Using SQL Shell and Command Line for PostgreSQL

This guide explains how to interact with PostgreSQL using the SQL Shell (psql) and the command line interface. It also provides tips for setting up the environment for seamless usage.

## Topics Covered

### 1. **Accessing Databases with SQL Shell**
- **List all databases:**
  ```sql
  \list
  ```
  Use this command to display a list of all available databases.

- **Clear the screen:**
  ```
  \! cls
  ```
  Clears the SQL Shell console for a fresh view.

- **Create a new database:**
  ```sql
  CREATE DATABASE test;
  ```
  Example command to create a database named `test`.

### 2. **Using PostgreSQL Without SQL Shell**
If you do not have access to SQL Shell, you can use the PostgreSQL command line through a properly configured environment.

### 3. **Setting Up Environment Variables**
To use PostgreSQL directly via the command line:
- Add the PostgreSQL `bin` directory to your system's PATH environment variable.
  Example path:
  ```
  C:/Program Files/PostgreSQL/<version>/bin
  ```

### 4. **Accessing PostgreSQL via Command Line**
After setting up the environment variables:
- Open a command prompt and run:
  ```
  psql -U postgres
  ```
- Enter the password you set during PostgreSQL installation.

### 5. **Additional Tips**
- **Switch to a database:**
  ```sql
  \c <database_name>
  ```
  Replace `<database_name>` with the name of the database you want to connect to.

- **View tables in a database:**
  ```sql
  \dt
  ```

- **Exit psql:**
  ```
  \q
  ```

---

This guide covers essential commands and setup tips to help you efficiently use PostgreSQL via the SQL Shell or command line. Explore and practice these commands for a smoother database management experience.






