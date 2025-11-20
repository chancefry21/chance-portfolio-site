# **SkyHawk Bank SQL Database**

This project demonstrates the design and implementation of a full relational SQL database for a fictional financial institution, **SkyHawk Bank**.
It highlights real-world data modeling, schema creation, and analytical SQL queries used to answer business questions.

---

## **Project Overview**

The goal of this project was to build a **normalized, scalable database** that models banking operations such as customers, accounts, employees, cards, and transactions.

The project includes:

* Full MySQL schema (`tables.sql`)
* Realistic sample data (`inserts.sql`)
* Analysis and reporting queries (`sample-queries.sql`)
* ERD-style relationship structure
* Slide deck

This project demonstrates strong SQL fundamentals and practical database design.

---

## **Database Structure**

| Table                       | Description                                    |
| --------------------------- | ---------------------------------------------- |
| **branches**                | Bank locations and regions                     |
| **customers**               | Customer personal and contact info             |
| **employees**               | Bank staff assigned to branches                |
| **accounts**                | Checking, savings, and credit accounts         |
| **cards**                   | Debit/credit cards tied to accounts            |
| **transactions**            | Deposits, withdrawals, transfers, and payments |
| **account_balance_history** | Daily balance snapshots for trend analysis     |

---

## **Entity Relationships**

Key relationships across the system:

* A **branch** has many customers and employees
* A **customer** can have multiple accounts
* An **account** can have multiple cards and transactions
* Each **transaction** links to a single account
* **Balance history** tracks daily account balances per account

---

## **Technologies Used**

* **MySQL**
* SQL (DDL, DML, joins, aggregations, constraints)
* Database normalization
* Relational modeling

---

## **File Structure**

```
sql-bank-database/
│── tables.sql               # Database schema
│── inserts.sql              # Sample dataset
│── sample-queries.sql       # Analytical SQL queries
│── SkyHawk Bank Database SQL.pptx    # Project presentation
│── README.md                # Documentation
```

---

## **Sample Queries**

### 1. Total deposits by customer

```sql
SELECT c.customer_id,
       c.first_name,
       c.last_name,
       SUM(t.amount) AS total_deposits
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
WHERE t.transaction_type = 'Deposit'
GROUP BY c.customer_id;
```

### 2. Monthly transaction volume

```sql
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
       COUNT(*) AS num_transactions,
       SUM(amount) AS total_amount
FROM transactions
GROUP BY month
ORDER BY month;
```

### 3. Highest average account balances

```sql
SELECT a.account_id,
       c.first_name,
       c.last_name,
       AVG(h.balance) AS avg_balance
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
JOIN account_balance_history h ON a.account_id = h.account_id
GROUP BY a.account_id
ORDER BY avg_balance DESC
LIMIT 10;
```

---

## **Skills Demonstrated**

* Relational database design
* Table creation & constraints
* Foreign keys and normalization
* Writing business-style SQL queries
* Analytical SQL for trends & reporting
* Clean documentation of a database project

---

## **Presentation**

 **[View Project Slide Deck](SkyHawk%20Bank%20Database%20SQL.pdf)**

---

## **Summary**

This SQL project shows the practical skills needed for data analyst and BI roles, including database design, SQL querying, and translating real business logic into a structured data system.

---
