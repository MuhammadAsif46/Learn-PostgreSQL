## String Functions in PostgreSQL
String functions in PostgreSQL are used to manipulate and analyze text data.

### Common String Functions

#### **1. CONCAT**
- Concatenates two or more strings.
- **Example:**
  ```sql
  SELECT CONCAT(first_col, second_col);
  SELECT CONCAT('Hello', ' ', 'World');
  ```

#### **2. CONCAT_WS**
- Concatenates strings with a separator.
- **Example:**
  ```sql
  SELECT CONCAT_WS('-', '2024', '12', '21');
  ```

#### **3. SUBSTRING**
- Extracts a portion of a string.
- **Example:**
  ```sql
  SELECT SUBSTRING('Hello', 1, 4);
  ```

#### **4. REPLACE**
- Replaces occurrences of a substring.
- **Example:**
  ```sql
  SELECT REPLACE('Hello World', 'World', 'PostgreSQL');
  ```

#### **5. REVERSE**
- Reverses the string.
- **Example:**
  ```sql
  SELECT REVERSE('Hello');
  ```

#### **6. LENGTH**
- Returns the length of the string.
- **Example:**
  ```sql
  SELECT LENGTH('PostgreSQL');
  ```

#### **7. UPPER & LOWER**
- Converts string to uppercase or lowercase.
- **Example:**
  ```sql
  SELECT UPPER('hello world');
  SELECT LOWER('HELLO WORLD');
  ```

#### **8. TRIM, LTRIM, RTRIM**
- Removes leading, trailing, or both spaces from a string.
- **Examples:**
  ```sql
  SELECT TRIM('  Hello  ');
  SELECT LTRIM('  Hello  ');
  SELECT RTRIM('  Hello  ');
  ```

#### **9. POSITION**
- Returns the position of a substring.
- **Example:**
  ```sql
  SELECT POSITION('World' IN 'Hello World') AS position;
  ```

#### **10. STRING_AGG**
- Concatenates a list of strings with a delimiter.
- **Example:**
  ```sql
  SELECT STRING_AGG(name, ', ') AS employee_names
  FROM employees;
  ```

---

This guide covers essential aggregation, grouping, and string functions in PostgreSQL to enhance your data manipulation skills.

