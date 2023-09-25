CREATE TABLE customer23456 (
	customer_id INT IDENTITY(1, 1),
	customer_name VARCHAR(15),
	customer_city VARCHAR(15),
	PRIMARY KEY ( customer_id)
);

CREATE TABLE branch23456 (
	branch_name VARCHAR(15),
	branch_city VARCHAR(15) not null,
	assets NUMERIC(12, 2) not null

	PRIMARY KEY (branch_name)
);

CREATE TABLE account23456 (
	acct_id INT IDENTITY(1, 1),
	branch_name CHAR(15) not null,
	balance NUMERIC(12, 2) not null,

	PRIMARY KEY (acct_id)
);

CREATE TABLE loan23456(
	loan_number VARCHAR(15),
	branch_name CHAR(20) not null,
	amount  NUMERIC(12, 2) not null,
	PRIMARY KEY (loan_number)
);

CREATE TABLE depositor23456 (
	customer_name VARCHAR(30) not null,
	acct_id CHAR(10),
	account_number VARCHAR(15) not null,	
	PRIMARY KEY (customer_name, acct_id)

);

CREATE TABLE borrower23456 (
	customer_name VARCHAR(15) not null,
	loan_number VARCHAR(15) not null,
	PRIMARY KEY (customer_name, loan_number)
);
INSERT INTO customer23456 (customer_name, customer_city) VALUES
('John Smith', 'New York'),
('Emma Johnson', 'Los Angeles'),
('Michael Brown', 'Chicago'),
('Sophia Davis', 'Houston'),
('William Wilson', 'San Francisco');

INSERT INTO branch23456 (branch_name, branch_city, assets) VALUES
('B001', 'New York', 1000000),
('B002', 'Los Angeles', 800000),
('B003', 'Chicago', 1200000),
('B004', 'Houston', 900000),
('B005', 'San Francisco', 1500000);

INSERT INTO account23456 (branch_name, balance) VALUES
('B001', 50000),
('B002', 70000),
('B003', 60000),
('B004', 90000),
('B005', 80000);

INSERT INTO loan23456 (loan_number, branch_name, amount) VALUES
('L001', 'B001', 100000),
('L002', 'B002', 150000),
('L003', 'B003', 200000),
('L004', 'B004', 120000),
('L005', 'B005', 180000);

INSERT INTO depositor23456 (customer_name, acct_id, account_number) VALUES
('John Smith', 'AC001', '12345678'),
('Emma Johnson', 'AC002', '23456789'),
('Michael Brown', 'AC003', '34567890'),
('Sophia Davis', 'AC004', '45678901'),
('William Wilson', 'AC005', '56789012');

INSERT INTO borrower23456 (customer_name, loan_number) VALUES
('John Smith', 'L001'),
('Emma Johnson', 'L002'),
('Michael Brown', 'L003'),
('Sophia Davis', 'L004'),
('William Wilson', 'L005');
SELECT * FROM customer23456;

SELECT * FROM branch23456;

SELECT * FROM account23456;

SELECT * FROM loan23456;

SELECT * FROM depositor23456;

SELECT * FROM borrower23456;