# Lab 4: Backup and Restore

## Overview
This lab demonstrates how to back up and restore a MySQL database using mysqldump.


## Steps
### Step 1: Create the Database and Grant Privileges
1. Log in as `root`:
```bash
sudo mysql -u root -p
```
2. Execute the following SQL commands:

```sql
CREATE DATABASE backup_testdb;
GRANT ALL PRIVILEGES ON backup_testdb.* TO 'labuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

### Step 2: Log in as labuser and Create the Table with Sample Data
1. Log in with the labuser

```bash
mysql -u labuser -p backup_testdb
```
2. Create a table and insert sample data
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

### Step 3: Back Up the Database Using mysqldump

1. Run the following command to back up the database
```bash
sudo mysqldump -u root backup_testdb > backup_testdb.sql
```

### Step 4: Verify the Backup File (Optional)
1. To check the contents of the backup file:
```bash
cat backup_testdb.sql
```

### Step 5: Drop the Database to Simulate Data Loss
1. Log in as root:
```bash
sudo mysql -u root -p
```

2. Drop the database:
```sql
DROP DATABASE backup_testdb;
EXIT;
```

### Step 6: Restore the Database from the Backup File

1. Recreate the database:
```bash
sudo mysql -u root -p -e "CREATE DATABASE backup_testdb;"
sudo mysql -u root backup_testdb < backup_testdb.sql
```
2. Restore the database:

### Step 7: Verify the Restored Database
1. Log in as root
```bash
sudo mysql -u root -p
```
2. Check the restored data:
```sql
USE backup_testdb;
SHOW TABLES;
SELECT * FROM employees;
EXIT;
```

## Results
- The database 'backup_testdb' has been successfully backed up and restored.
- The data in the 'employees' table has been verified as accurate.

## Scripts
The SQL creation and insertion commands are saved in the following file:
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
## Screenshots
1. **Create Database and Grant Privileges**  
   Command executed to create the database and grant privileges:  
   ![Create Database](images/1-create-database-root.png)

2. **Create Table and Insert Data**  
   Table created and sample data inserted:  
   ![Create Table and Data](images/2-create-table-employees.png)

3. **Verify Inserted Data**  
   Data inserted in the `employees` table:  
   ![Verify Data](images/3-insert-employees.png)

4. **Back Up Database**  
   Database `backup_testdb` backed up successfully:  
   ![Backup Database](images/4-backup-database.png)

5. **Restore Database**  
   Database `backup_testdb` restored from backup file:  
   ![Restore Database](images/5-restore-database.png)

6. **Verify Restored Data**  
   Tables verified after restoration:  
   ![Verify Restored Data](images/6-show-tables-restored.png)

7. **Select Restored Data**  
   Data verified in the restored `employees` table:  
   ![Select Restored Data](images/7-select-restored-data.png)



