# Banking Management System 
# by Abhishek Kumar and Prateek Pandey

This is a simple Banking Management System that we built using Java and MySQL. It allows users to register, log in, manage their bank accounts, and perform various transactions like debit, credit, and transfer money.

## Features

- **User Registration & Login**: Users can easily sign up and log in using their email and password.
- **Account Management**: After logging in, users can create new bank accounts, check their balances, and manage existing accounts.
- **Transactions**: The system supports debit, credit, and money transfers between accounts.
- **Security**: We’ve ensured that all passwords are securely hashed using SHA-256, and security pins are also hashed for better protection.

## Prerequisites

Make sure you have the following installed:

- **Java**: JDK 8 or higher
- **MySQL**: Version 5.7 or higher
- **MySQL Connector**: The MySQL JDBC driver (`mysql-connector-java`) for connecting the Java app to MySQL.
- **IDE**: Any Java IDE (like IntelliJ IDEA, Eclipse, etc.).

## Setup

Here’s how to get started with the project:

1. **Clone the repository**:
    ```bash
    git clone
    https://github.com/Abhishek10745/Banking_Management_System_by_Abhishek_Kumar_and_Prateek_Pandey
    
    cd
https://github.com/Abhishek10745/Banking_Management_System_by_Abhishek_Kumar_and_Prateek_Pandey
    ```

2. **Create and Set Up the Database**:
    - Create a new database in MySQL:
        ```sql
        CREATE DATABASE banking_system;
        ```
    - Switch to the `banking_system` database:
        ```sql
        USE banking_system;
        ```
    - Run the following SQL script to create the necessary tables:
        ```sql
        -- Create table for users
        CREATE TABLE IF NOT EXISTS User (
            full_name VARCHAR(255) NOT NULL,
            email VARCHAR(255) NOT NULL PRIMARY KEY,
            password VARCHAR(255) NOT NULL
        );

        -- Create table for accounts
        CREATE TABLE IF NOT EXISTS Accounts (
            account_number BIGINT NOT NULL PRIMARY KEY,
            full_name VARCHAR(255) NOT NULL,
            email VARCHAR(255) NOT NULL UNIQUE,
            balance DECIMAL(10,2) NOT NULL,
            security_pin CHAR(128) DEFAULT NULL,  -- For storing hashed security pin (SHA-256)
            FOREIGN KEY (email) REFERENCES User(email)
        );
        ```

3. **Configure MySQL Connection**:
    - Open the project files(BankingApp.java) and update the database connection details (`url`, `username`, `password`) to match your MySQL setup.

4. **Run the Application**:
    - Compile and run the Java files in your IDE. Follow the console instructions to register and log in.
    - You can manage accounts, check balances, and perform transactions using the menu options provided in the system.

## Thank you
