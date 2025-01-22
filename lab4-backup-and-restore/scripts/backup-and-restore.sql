-- Create the database
CREATE DATABASE backup_testdb;

-- Use the created database
USE backup_testdb;

-- Create the employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Insert sample data into the employees table
INSERT INTO employees (name, position, salary) VALUES
('Alice', 'Developer', 55000.00),
('Bob', 'Designer', 50000.00),
('Charlie', 'Manager', 70000.00);

-- Verify the data in the employees table
SELECT * FROM employees;

-- Grant privileges to labuser (run this as root, not within this script)
-- GRANT ALL PRIVILEGES ON backup_testdb.* TO 'labuser'@'localhost';
-- FLUSH PRIVILEGES;
