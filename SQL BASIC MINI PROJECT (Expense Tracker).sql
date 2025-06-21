--CREATING EXPENSES DB--
CREATE DATABASE ExpenseTrackerDB

--USING THE DB I CREATED --
USE ExpenseTrackerDB

--CREATING TABLE TO TRACK EXPENSES--
CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    expense_date DATE,
    category VARCHAR(50),
    amount FLOAT,
    payment_mode VARCHAR(20),
    notes TEXT
)

--INSERTING VALUES INTO TABLE--
INSERT INTO expenses VALUES
(1, '2024-06-01', 'Food', 160, 'UPI', 'Swiggy lunch'),
(2, '2024-06-02', 'Shopping', 900, 'UPI', 'Jeans from Amazon'),
(3, '2024-06-02', 'Subscriptions', 199, 'UPI', 'Netflix monthly plan'),
(4, '2024-06-03', 'Food', 180, 'Cash', 'Biryani from local shop'),
(5, '2024-06-04', 'Snacks', 70, 'UPI', 'Lays, chocolate, drink'),
(6, '2024-06-05', 'Mobile Recharge', 249, 'UPI', 'Jio recharge'),
(7, '2024-06-06', 'Food', 130, 'Cash', 'Maggi + chai'),
(8, '2024-06-07', 'Self-care', 500, 'UPI', 'Salon visit'),
(9, '2024-06-08', 'Shopping', 650, 'UPI', 'Kurti from Myntra'),
(10, '2024-06-09', 'Food', 150, 'Cash', 'Pizza dinner'),
(11, '2024-06-10', 'Snacks', 60, 'Cash', 'Evening munchies'),
(12, '2024-06-11', 'Food', 100, 'UPI', 'Late-night craving'),
(13, '2024-06-12', 'Subscriptions', 149, 'UPI', 'Spotify Premium'),
(14, '2024-06-13', 'Shopping', 400, 'UPI', 'Flip-flops from Flipkart'),
(15, '2024-06-14', 'Self-care', 300, 'UPI', 'Face mask + serum combo')

--Qeury to Track How much did I spend overall?--
SELECT SUM(amount) 
FROM expenses

--QueryFind the total amount spent on Food--
SELECT SUM(amount)
FROM expenses 
WHERE category='Food'

--Query to get the number of expenses made using UPI.--
SELECT COUNT(*)
FROM expenses 
WHERE payment_mode='UPI'

--Query to find how much you spent on each category--
SELECT category, SUM(amount)
AS total_spent 
FROM expenses 
GROUP BY category

--Query to show total amount spent per category, but only for categories where total spending is more than ₹500--
SELECT category, SUM(amount) 
AS total_spent
FROM expenses
GROUP BY category 
HAVING SUM(amount)>500

--Query to find the 3 most expensive individual expenses--
SELECT TOP 3 *
FROM expenses 
ORDER BY amount DESC




