# SQL Bank Database Project

This project models a realistic banking system using SQL. It demonstrates database design, table creation, data insertion, and analytical queries that reflect real financial operations. The goal was to build a fully relational SQL database that supports customers, accounts, employees, branches, cards, and transactions while enforcing proper business rules and constraints.

This project was originally created as part of a database systems course, and I rebuilt and organized it for my data analytics portfolio.

---

## 📌 Project Features

- Full relational database design  
- Logical business rules and constraints  
- ERD (Entity Relationship Diagram)  
- `CREATE TABLE` SQL script  
- `INSERT` data script  
- Realistic SQL queries for banking operations  
- Supports customers, accounts, balances, transactions, cards, and employees  

---

## 🧱 Database Structure

The system contains the following core tables:

- **Customers**
- **Accounts**
- **Cards**
- **Transactions**
- **Account Balance History**
- **Employees**
- **Branches**

Each table is linked by primary and foreign keys, following proper normalization.

---

## 🗺️ ERD Diagram

*(Insert ERD.png in your repo and it will render here automatically)*

```
![ERD](ERD.png)
```

---

## 📝 Business Rules (Summarized)

- A customer can open multiple accounts.  
- Each account is associated with a single branch.  
- Employees may assist multiple customers.  
- Cards belong to accounts (not directly to customers).  
- Account balances are tracked over time.  
- Transactions update account balances.  
- Accounts must have at least one owner.  

These reflect real-world banking constraints and workflows.

---

## 🏗️ SQL Files Included

### **1. tables.sql**  
Contains all `CREATE TABLE` statements with:
- Primary keys  
- Foreign keys  
- Data types  
- Constraints  

### **2. inserts.sql**  
Sample data to populate the schema:
- Customer records  
- Accounts  
- Cards  
- Transactions  
- Employee assignments  

### **3. sample-queries.sql**  
Analytical SQL queries including:
- Customer account lookup  
- Employee → Customer listing  
- JOINs across multiple tables  
- Add new customers / update accounts  
- Transaction history queries  
- String filtering with LIKE  
- Aggregations  
- Real banking insights  

---

## 🔍 Example Analytical Queries

### 1. Find all accounts for a given customer
```sql
SELECT c.CustomerName, a.AccountNumber, a.AccountType
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID;
```

### 2. Find transactions for an account
```sql
SELECT t.TransactionID, t.Amount, t.Type, t.TransactionDate
FROM Transactions t
WHERE t.AccountID = 101;
```

### 3. Find employees who assisted a specific customer
```sql
SELECT e.EmployeeName, c.CustomerName
FROM Employees e
JOIN CustomerEmployee ce ON e.EmployeeID = ce.EmployeeID
JOIN Customers c ON ce.CustomerID = c.CustomerID;
```

More queries are inside `sample-queries.sql`.

---

## 🧪 How to Run the Project

1. Open your SQL environment (MySQL, PostgreSQL, SQL Server, SQLite, etc.).  
2. Run **tables.sql** to create all tables.  
3. Run **inserts.sql** to populate sample data.  
4. Run queries from **sample-queries.sql** to test functionality.

---

## 📄 Presentation

Full project slides are included as a PDF:
```
project-presentation.pdf
```

---

## 🧑‍💻 What I Learned

- Designing normalized relational schemas  
- Writing realistic SQL for business operations  
- Managing foreign keys and constraints  
- Modeling banking workflows in SQL  
- Querying multi-table relational data  
- Presenting technical work clearly  

---

## 📫 Contact

For questions or collaboration:

**Email:** chancefry21@gmail.com

---

