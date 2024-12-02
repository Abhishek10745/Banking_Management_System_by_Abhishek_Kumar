-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS banking_system;

-- Use the newly created database
USE banking_system;

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
