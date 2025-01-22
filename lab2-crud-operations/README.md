# Lab 2: CRUD Operations

## Overview
This lab demonstrates basic CRUD (Create, Read, Update, Delete) operations in MySQL using the `students` table.

## Steps
1. **Select the Database**:
   ```sql
   USE lab1_testdb;
   ```sql
2. **Create the table**:
	```sql
	CREATE TABLE students (
		id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(50),
		age INT,
		course VARCHAR(100)
	);
	```
3. **Insert Data**:
```sql
INSERT INTO students (name, age, course) VALUES
('Alice', 22, 'Computer Science'),
('Bob', 25, 'Machine Learning'),
('Charlie', 21, 'Mathematics');
```

4. **Select Data**:
```sql
SELECT * FROM students;
```
5. **Update Data**:
```sql
UPDATE students SET course = 'Physics' WHERE name = 'Charlie';

```
6. **Select Updated Data**:
```sql
SELECT * FROM students;
```
7. ** Delete Data**:
```sql
DELETE FROM students WHERE name = 'Charlie';
```
8. **Select Data After Deletion**:
```sql
SELECT * FROM students;

```

## Scripts
The SQL commands used in this lab are stored in the following file:
- [scripts/crud-operations.sql](scripts/crud-operations.sql)



## Results
At the end of this lab, you will have:

Practiced basic CRUD operations in MySQL.
Learned how to modify and query data using SQL commands.