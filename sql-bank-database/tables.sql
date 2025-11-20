-- Drop tables if they exist (for clean rerun)
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS account_balance_history;
DROP TABLE IF EXISTS transactions;
DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS branches;
SET FOREIGN_KEY_CHECKS = 1;

-- Branches table
CREATE TABLE branches (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    state VARCHAR(50)
);

-- Customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    branch_id INT,
    hire_date DATE,
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- Accounts table
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    branch_id INT NOT NULL,
    account_type ENUM('Checking','Savings','Credit') NOT NULL,
    opened_date DATE NOT NULL,
    balance DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    status ENUM('Open','Closed','Frozen') NOT NULL DEFAULT 'Open',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

-- Cards table
CREATE TABLE cards (
    card_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    card_number VARCHAR(20) NOT NULL,
    card_type ENUM('Debit','Credit') NOT NULL,
    issue_date DATE NOT NULL,
    expiration_date DATE NOT NULL,
    status ENUM('Active','Inactive','Stolen','Lost') NOT NULL DEFAULT 'Active',
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Transactions table
CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_date DATETIME NOT NULL,
    transaction_type ENUM('Deposit','Withdrawal','Transfer','Payment') NOT NULL,
    amount DECIMAL(12,2) NOT NULL,
    description VARCHAR(255),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Account Balance History table
CREATE TABLE account_balance_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT NOT NULL,
    snapshot_date DATE NOT NULL,
    balance DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
