# Lab 4: Backup and Restore

## Overview
# This lab demonstrates how to back up and restore a MySQL database using mysqldump.

# Step 1: Create the Database and Grant Privileges

```bash
sudo mysql -u root -p
```

```sql
CREATE DATABASE backup_testdb;
GRANT ALL PRIVILEGES ON backup_testdb.* TO 'labuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

# Step 2: Log in as labuser and Create the Table with Sample Data
```bash
mysql -u labuser -p backup_testdb
```

```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, position, salary) VALUES
('Alice', 'Developer', 55000.00),
('Bob', 'Designer', 50000.00),
('Charlie', 'Manager', 70000.00);
EXIT;
```

# Step 3: Back Up the Database Using mysqldump
```bash
sudo mysqldump -u root backup_testdb > backup_testdb.sql
```

# Step 4: Verify the Backup File (Optional)
```bash
cat backup_testdb.sql
```

# Step 5: Drop the Database to Simulate Data Loss
```bash
sudo mysql -u root -p
```


```sql
DROP DATABASE backup_testdb;
EXIT;
```

# Step 6: Restore the Database from the Backup File
```bash
sudo mysql -u root -p -e "CREATE DATABASE backup_testdb;"
sudo mysql -u root backup_testdb < backup_testdb.sql
```


# Step 7: Verify the Restored Database
```bash
sudo mysql -u root -p
```

```sql
USE backup_testdb;
SHOW TABLES;
SELECT * FROM employees;
EXIT;
```

# Results
# - The database 'backup_testdb' has been successfully backed up and restored.
# - The data in the 'employees' table has been verified as accurate.

# Scripts
# Save the SQL creation and insertion commands in the following file:

```bash
cat > scripts/create-employees.sql <<EOL
```


```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, position, salary) VALUES
('Alice', 'Developer', 55000.00),
('Bob', 'Designer', 50000.00),
('Charlie', 'Manager', 70000.00);
EOL

```




