# basic_SQL
## 結構式查詢語言 (SQL) 是一種用於在關聯式資料庫中儲存和處理資訊的程式設計語言
## Foreign Key: a reference in one table’s records to the primary key of another table
## Primary Key: used to uniquely identify each record in that table
# AND/OR
```SQL
SELECT model
FROM cars
WHERE color = 'blue'
  AND year > 2014;
```
# AS(rename)
```SQL
SELECT name AS 'movie_title'
FROM movies;
```
# LIKE / %
# '%a'特定結尾 '%a%'特定中間 'a%'特定開頭
```SQL
SELECT name
FROM movies
WHERE name LIKE 'The%';
```
# _(底線)
```SQL
SELECT name
FROM movies
WHERE name LIKE '_ove'
```
# ORDER BY
```SQL
SELECT *
FROM contacts
ORDER BY birth_date DESC;
```
# DISTINCT
```SQL
SELECT DISTINCT city
FROM contact_details;
```
# BETWEEN(The range of alues can be text, numbers, or date data.)
```SQL
SELECT *
FROM movies
WHERE year BETWEEN 1980 AND 1990;
```
# LIMIT/OFFSET
```SQL
SELECT *
FROM movies
LIMIT 5 OFFSET 2; 
```
# NULL
```SQL
SELECT address
FROM records
WHERE address IS NOT NULL;
```
# CREATE TABLE
```SQL
CREATE TABLE student (
id INTEGER PRIMARY KEY,
name TEXT UNIQUE,
grade INTEGER NOT NULL,
age INTEGER DEFAULT 10
);
```
# Insert into
```SQL
-- Insert into columns in order:
INSERT INTO table_name
VALUES (value1, value2);
-- Insert into columns by name:
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```
# ALTER TABLE
```SQL
ALTER TABLE table_name
ADD column_name datatype;
```
# DELETE
```SQL
DELETE FROM table_name
WHERE some_column = some_value;
```
# UPDATE
```SQL
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE some_column = some_value;
```
# Aggregate Functions
# GROUP BY
```SQL
SELECT COUNT(*) AS 'total_movies',
rating
FROM movies
GROUP BY 2
ORDER BY 1;
```
# MAX/MIN/AVG/SUM
```SQL
SELECT MAX(amount)
FROM transactions;
```
# COUNT
```SQL
SELECT COUNT(*)
FROM employees
WHERE experience < 5;
``` 
# HAVING
```SQL
SELECT year,
COUNT(*)
FROM movies
GROUP BY year
HAVING COUNT(*) > 5;
```
# ROUND()
```SQL
SELECT year,
ROUND(AVG(rating), 2)
FROM movies
WHERE year = 2015;
```
# Outer Join
```SQL
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name =
table2.column_name;
```
# Inner Join
```SQL
SELECT *
FROM books
JOIN authors
ON books.author_id = authors.id;
``` 
# WITH
```SQL
WITH temporary_movies AS (
SELECT *
FROM movies
)
SELECT *
FROM temporary_movies
WHERE year BETWEEN 2000 AND 2020;
```
# UNION
```SQL
SELECT name
FROM first_names
UNION
SELECT name
FROM last_names
```
# CROSS JOIN
```SQL
SELECT shirts.shirt_color,
pants.pants_color
FROM shirts
CROSS JOIN pants;
```
# 字串長度
```SQL
CHAR_LENGTH()
``` 
# COALESCE
```SQL
SELECT COALESCE(
    (SELECT DISTINCT salary
     FROM Employee
     ORDER BY salary DESC
     LIMIT 1 OFFSET 1),
    NULL
) AS SecondHighestSalary;
```

