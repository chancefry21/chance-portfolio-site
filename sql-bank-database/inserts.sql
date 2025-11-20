-- Insert sample branches
INSERT INTO branches (branch_name, city, state) VALUES
('SkyHawk Main', 'Boston', 'MA'),
('SkyHawk North', 'Portland', 'ME'),
('SkyHawk South', 'Providence', 'RI');

-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, phone, address, city, state, postal_code) VALUES
('Alex', 'Johnson', 'alex.johnson@example.com', '555-111-2222', '12 Oak St', 'Boston', 'MA', '02108'),
('Jordan', 'Lee', 'jordan.lee@example.com', '555-333-4444', '45 Pine Rd', 'Portland', 'ME', '04101'),
('Taylor', 'Martinez', 'taylor.martinez@example.com', '555-555-6666', '88 Elm Ave', 'Providence', 'RI', '02903');

-- Insert sample employees
INSERT INTO employees (first_name, last_name, role, branch_id, hire_date) VALUES
('Morgan', 'Reed', 'Teller', 1, '2022-03-01'),
('Chris', 'Nguyen', 'Manager', 1, '2020-06-15'),
('Jamie', 'Patel', 'Advisor', 2, '2021-09-10'),
('Riley', 'Brown', 'Teller', 3, '2023-01-25');

-- Insert sample accounts
INSERT INTO accounts (customer_id, branch_id, account_type, opened_date, balance, status) VALUES
(1, 1, 'Checking', '2022-01-10', 2500.00, 'Open'),
(1, 1, 'Savings',  '2022-02-15', 5000.00, 'Open'),
(2, 2, 'Checking', '2021-11-05', 1200.50, 'Open'),
(3, 3, 'Checking', '2023-03-20', 300.00, 'Open'),
(3, 3, 'Credit',   '2023-04-01', -450.00, 'Open');

-- Insert sample cards
INSERT INTO cards (account_id, card_number, card_type, issue_date, expiration_date, status) VALUES
(1, '4000123412341234', 'Debit',  '2022-01-15', '2026-01-31', 'Active'),
(2, '4000567856785678', 'Debit',  '2022-02-20', '2026-02-28', 'Active'),
(3, '4000987698769876', 'Debit',  '2021-11-10', '2025-11-30', 'Active'),
(5, '5000123412341234', 'Credit', '2023-04-05', '2027-04-30', 'Active');

-- Insert sample transactions
INSERT INTO transactions (account_id, transaction_date, transaction_type, amount, description) VALUES
(1, '2023-10-01 09:15:00', 'Deposit',    1000.00, 'Paycheck'),
(1, '2023-10-03 13:22:00', 'Withdrawal',  200.00, 'ATM Withdrawal'),
(1, '2023-10-05 18:45:00', 'Payment',      75.50, 'Utility Bill'),
(2, '2023-10-02 11:10:00', 'Deposit',     500.00, 'Transfer from checking'),
(3, '2023-10-06 15:30:00', 'Withdrawal',  100.00, 'ATM Withdrawal'),
(5, '2023-10-07 12:00:00', 'Payment',     150.00, 'Credit card payment');

-- Insert sample balance history
INSERT INTO account_balance_history (account_id, snapshot_date, balance) VALUES
(1, '2023-09-30', 1500.00),
(1, '2023-10-05', 2300.00),
(2, '2023-09-30', 4500.00),
(2, '2023-10-05', 5000.00),
(3, '2023-09-30', 1300.50),
(3, '2023-10-05', 1200.50),
(5, '2023-09-30', -500.00),
(5, '2023-10-05', -450.00);
