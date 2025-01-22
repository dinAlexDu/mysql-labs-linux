# Lab 1: Basic Setup

## Overview
This lab demonstrates how to install MySQL on Ubuntu, configure a secure installation, create a database, and set up a user with appropriate privileges.

## Steps
1. Update the system:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
2. Install MySQL:
	```bash
	sudo apt install mysql-server -y
	```
3. Secure the MySQL installation:
	```bash
	sudo mysql_secure_installation
	```
4. Create a database and user:
	```bash
	CREATE DATABASE lab1_testdb;
	CREATE USER 'labuser'@'localhost' IDENTIFIED BY 'P@ssw0rd';
	GRANT ALL PRIVILEGES ON lab1_testdb.* TO 'labuser'@'localhost';
	FLUSH PRIVILEGES;

	```
5. Test the connection:
	```bash
	mysql -u labuser -p
	```
	
Results
At the end of this lab, you will have:

A MySQL installation on Ubuntu.
A secure configuration for MySQL.
A database lab1_testdb and a user labuser with full privileges.
Scripts
The SQL commands used in this lab are available in the scripts/setup-database.sql file.

Notes
This setup is designed for learning purposes. For production environments, additional security configurations might be required.