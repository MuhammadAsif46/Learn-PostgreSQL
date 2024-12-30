# Types of Relationship

- **One-to-One**
  - A relationship where each record in Table A corresponds to exactly one record in Table B, and vice versa.
  - Example:
    ```sql
    CREATE TABLE users (
        user_id SERIAL PRIMARY KEY,
        name VARCHAR(100)
    );

    CREATE TABLE profiles (
        profile_id SERIAL PRIMARY KEY,
        user_id INT UNIQUE,
        bio TEXT,
        FOREIGN KEY (user_id) REFERENCES users(user_id)
    );
    ```

- **One-to-Many**
  - A relationship where a record in Table A can have multiple corresponding records in Table B.
  - Example:
    ```sql
    CREATE TABLE authors (
        author_id SERIAL PRIMARY KEY,
        name VARCHAR(100)
    );

    CREATE TABLE books (
        book_id SERIAL PRIMARY KEY,
        title VARCHAR(200),
        author_id INT,
        FOREIGN KEY (author_id) REFERENCES authors(author_id)
    );
    ```

- **Many-to-Many**
  - A relationship where multiple records in Table A can be associated with multiple records in Table B.
  - Example:
    ```sql
    CREATE TABLE students (
        student_id SERIAL PRIMARY KEY,
        name VARCHAR(100)
    );

    CREATE TABLE courses (
        course_id SERIAL PRIMARY KEY,
        title VARCHAR(100)
    );

    CREATE TABLE enrollments (
        student_id INT,
        course_id INT,
        PRIMARY KEY (student_id, course_id),
        FOREIGN KEY (student_id) REFERENCES students(student_id),
        FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );
    ```

# Foreign Key

- A foreign key is a column or a set of columns in a table that establishes a link between the data in two tables.
- It ensures referential integrity by enforcing that the value in the foreign key column exists in the referenced primary key column.

### Example:
```sql
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```
- In this example, the `customer_id` column in the `orders` table is a foreign key referencing the `customer_id` column in the `customers` table.
