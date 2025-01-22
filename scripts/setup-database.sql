-- Create the database
CREATE DATABASE lab1_testdb;

-- Create the user
CREATE USER 'labuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';

-- Grant privileges
GRANT ALL PRIVILEGES ON lab1_testdb.* TO 'labuser'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;
