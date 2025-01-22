USE lab1_testdb;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(100)
);

INSERT INTO students (name, age, course) VALUES
('Alice', 22, 'Computer Science'),
('Bob', 25, 'Machine Learning'),
('Charlie', 21, 'Mathematics');

SELECT * FROM students;

UPDATE students SET course = 'Physics' WHERE name = 'Charlie';

SELECT * FROM students;

DELETE FROM students WHERE name = 'Charlie';

SELECT * FROM students;
