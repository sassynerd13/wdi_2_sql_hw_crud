-- In case there is already a bank_homework database, drop it
DROP DATABASE IF EXISTS bank_homework;

-- Create a bank_homework database
CREATE DATABASE bank_homework;

-- Connect to the bank_homework databases
\c bank_homework

-- Create a payments table
--  The table should have columns of id, created_at, amount, payer_name,
--  recipient_name, and description with the appropriate datatypes
CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  created_at DATETIME ??,
  amount INTEGER (5, 2)
  payer_name TEXT,
  recipient_name TEXT,
  description TEXT
);

-- Alter the payments table, add the column of `zipcode`
-- to specify where the transaction was made
ALTER TABLE payments ADD zipcode INTEGER;


-- Insert 20 rows into the payments table
INSERT INTO payments (amount, payer_name, recipient_name, description) VALUES
(800, 'Sean', 'Sean', 'Deposit')
(amount, 'Anthony', 'Anthony', 'Deposit')
(amount, 'Christine', 'Christine', 'Deposit')
(amount, 'Laura', 'Laura', 'Deposit')
(amount, payer_name, 'Sean', description)
(amount, payer_name, 'Christine', description)
(amount, payer_name, 'Anthony', description)
(amount, payer_name, 'Laura', description)
(amount, payer_name, 'Christine', description)
(amount, payer_name, 'Laura', description)
(amount, payer_name, 'Anthony' description)
(amount, payer_name, 'Sean', description)
(amount, payer_name, 'Anthony', description)
(amount, payer_name, 'Laura', description)
(amount, payer_name, 'Sean', description)
(amount, payer_name, 'Laura', description)
(amount, payer_name, 'Christine', description)
-- The first of these payments should be deposits
-- try to keep the accounts positive and have at least three different payers.


-- You receive notice that the payment with id of 9 is $10 too low.
-- Alter that row so that it is corrected
UPDATE payments where id = 9


-- ??Delete all payments with an amount under $2
DELETE FROM payments WHERE amount < 2

-- Select all entries from the payments table
SELECT * FROM payments

-- In a single query, output all payments ordered from the largest to the smallest
SELECT * FROM payments ORDER BY amount



-- ??In a single query, output the names of all distinct recipients
SELECT recipient_name FROM payments WHERE DIST


-- ??In a single query, select all payments created in the past week
SELECT * FROM payments WHERE created_at

-- In a single query, select all payments with a blank description
SELECT * FROM payment WHERE description = NULL

-- In a single query, select all payments matching the name of one of the payers (choose any single one)
SELECT * FROM payments WHERE payer_name = 'Christine'
