# Lab 3: Table Relationships

## Overview
This lab demonstrates how to create and manage table relationships in MySQL, including One-to-Many and Many-to-Many relationships. The lab covers the creation of tables, insertion of sample data, and querying the relationships.

## Steps
1. **Create Tables**:
   - Create the `students`, `courses`, and `enrollments` tables.
   - Define primary keys and foreign key constraints.

2. **Insert Data**:
   - Populate the `students` table with basic student information.
   - Populate the `courses` table with course details.
   - Populate the `enrollments` table to link students to courses.

3. **Query Relationships**:
   - Write queries to fetch relationships between students and courses.

## Results
At the end of this lab, you will have:
- A `students` table storing student details.
- A `courses` table containing course information.
- An `enrollments` table implementing a Many-to-Many relationship between students and courses.

## Screenshots
1. **Create Students Table**  
   ![Students Table](images/1-create-students-table.png)

2. **Create Courses Table**  
   ![Courses Table](images/2-create-courses-table.png)

3. **Create Enrollments Table**  
   ![Enrollments Table](images/3-create-enrollments-table.png)

4. **Insert Students Data**  
   ![Students Data](images/4-insert-students-data.png)

5. **Insert Courses Data**  
   ![Courses Data](images/5-insert-courses-data.png)

6. **Insert Enrollments Data**  
   ![Enrollments Data](images/6-insert-enrollments-data.png)

7. **Query Relationships**  
   ![Query Relationships](images/7-query-relationships.png)

## Scripts
The SQL commands used in this lab are available in the following file:  
- `scripts/table-relationships.sql`

```sql
-- Lab 3: Table Relationships

-- Create students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Create courses table
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT
);

-- Create enrollments table (Many-to-Many)
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert students data
INSERT INTO students (name, age) VALUES 
('Alice', 22),
('Bob', 25);

-- Insert courses data
INSERT INTO courses (title, description) VALUES 
('Math 101', 'Basic Mathematics'),
('AI Basics', 'Introduction to AI');

-- Insert enrollments data
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-20'),
(1, 2, '2025-01-21'),
(2, 1, '2025-01-22');

-- Query relationships
SELECT 
    students.name AS student_name, 
    courses.title AS course_title, 
    enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id;
```
