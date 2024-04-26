CREATE DATABASE bank;
use bank;

CREATE TABLE customer (
	customerID INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customer
(customerID, customer, mode, city)
VALUES
(101, "Olivia", "Netbanking", "Portland"),
(102, "Ethan", "Credit Card", "Miami"),
(103, "Maya", "Credit Card", "Seattle"),
(104, "Liam", "Netbanking", "Denver"),
(105, "Sophia", "Credit Card", "New Orleans"),
(106, "Caleb", "Debit Card", "Minneapolis"),
(107, "Ava", "Debit Card", "Phoenix"),
(108, "Lucas", "Netbanking", "Boston"),
(109, "Isabella", "Netbanking", "Nashville"),
(110, "Jackson", "Credit Card", "Boston");

SELECT mode
FROM customer
GROUP BY mode;

SELECT mode, count(customer)
FROM customer
GROUP BY mode;