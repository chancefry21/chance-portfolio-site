-- 1. List all customers and their accounts
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    a.account_id,
    a.account_type,
    a.balance,
    b.branch_name
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN branches b ON a.branch_id = b.branch_id
ORDER BY c.customer_id, a.account_id;

-- 2. Total balance per customer
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_balance DESC;

-- 3. Transaction history for a specific account
SELECT 
    t.transaction_id,
    t.account_id,
    t.transaction_date,
    t.transaction_type,
    t.amount,
    t.description
FROM transactions t
WHERE t.account_id = 1
ORDER BY t.transaction_date DESC;

-- 4. Daily balance snapshot for an account
SELECT 
    a.account_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    h.snapshot_date,
    h.balance
FROM account_balance_history h
JOIN accounts a ON h.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
WHERE a.account_id = 1
ORDER BY h.snapshot_date;

-- 5. Employees and the branches they work at
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    e.role,
    b.branch_name,
    b.city,
    b.state
FROM employees e
LEFT JOIN branches b ON e.branch_id = b.branch_id
ORDER BY b.branch_name, employee_name;

-- 6. Accounts with negative or low balances (risk monitoring)
SELECT 
    a.account_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    a.account_type,
    a.balance
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
WHERE a.balance < 100.00
ORDER BY a.balance ASC;

-- 7. Total transaction volume per branch
SELECT 
    b.branch_name,
    SUM(t.amount * (t.transaction_type IN ('Deposit','Transfer'))) 
        - SUM(t.amount * (t.transaction_type IN ('Withdrawal','Payment'))) AS net_flow
FROM branches b
JOIN accounts a ON b.branch_id = a.branch_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY b.branch_name
ORDER BY net_flow DESC;

