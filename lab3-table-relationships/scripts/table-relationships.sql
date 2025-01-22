-- Lab 3: Table Relationships

-- Criar tabela de estudantes
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Criar tabela de cursos
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT
);

-- Criar tabela de matrículas (Many-to-Many)
CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Inserir estudantes
INSERT INTO students (name, age) VALUES 
('Alice', 22),
('Bob', 25);

-- Inserir cursos
INSERT INTO courses (title, description) VALUES 
('Math 101', 'Basic Mathematics'),
('AI Basics', 'Introduction to AI');

-- Inserir matrículas
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-20'),
(1, 2, '2025-01-21'),
(2, 1, '2025-01-22');

-- Consultar os relacionamentos
-- Estudantes e os cursos em que estão matriculados
SELECT 
    students.name AS student_name, 
    courses.title AS course_title, 
    enrollments.enrollment_date
FROM enrollments
JOIN students ON enrollments.student_id = students.id
JOIN courses ON enrollments.course_id = courses.id;
