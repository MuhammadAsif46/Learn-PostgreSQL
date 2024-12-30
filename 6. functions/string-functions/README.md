# String Functions:

1.  CONCAT, CONCAT_WS
2.  SUNSTR
3.  LEFT, RIGHT
4.  LENGTH
5.  UPPER, LOWER
6.  TRIM, LTRIM , RTRIM
7.  REPLACE
8.  POSITION
9.  STRING_AGG

- CONCAT:
  SELECT CONCAT(first_col, second_col)
  SELECT CONCAT(first_word, seconc_word, ...)

- CONCAT_WS:
  SELECT CONCAT_WS("-", frist_word, second_word)

- SUBSTRING:
  SELECT SUBSTRING('Hello',1,4)

- REPLACE:
  SELECT REPLACE(str, from_str, to_str)

- REVERSE:
  SELECT REVERSE('Hello World')

- LENGTH:
  SELECT LENGTH('hello')

- UPPER & LOWER:
  SELECT UPPER('hello world')
  SELECT LOWER('HELLO WORLD')

- TRIM, LTRIM, RTRIM:
  SELECT LEFT('abcdejghij',3);
  SELECT RIGHT('abcdejghij',5);
  SELECT TRIM('  Hello, World!  ');

- POSITION:
  SELECT POSITION('d' IN 'abcdefghijkl') AS Position;
