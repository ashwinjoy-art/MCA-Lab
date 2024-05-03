CREATE DATABASE RationShop;
USE RationShop;
CREATE TABLE customer1
(
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Address VARCHAR(50),
    Contact_Number VARCHAR(15)
);

INSERT INTO customer1 VALUES
    (1, 'John Doe', '123 Main Street', '123-456-7890'),
    (2, 'Jane Smith', '456 Elm Street', '987-654-3210'),
    (3, 'Michael Johnson','789 ak Avenue','555-123-4567'),
    (4, 'Emily Davis', '321 Pine Road', '222-333-4444'),
    (5, 'Sarah Wilson','567 Maple Lane','777-888-9999');

CREATE TABLE Product1
(
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(20),
    Quantity_Per_Unit INT,
    Unit_Price DECIMAL(10, 2)
);

INSERT INTO Product1 VALUES
    (1,'Rice', 1, 10.99),
    (2,'Wheat Flour', 1, 8.99),
    (3,'Sugar', 1, 5.99),
    (4,'Oil', 1, 12.99),
    (5,'Grains', 1, 2.99);

SELECT * FROM customer1;
SELECT * FROM Product1;

CREATE TABLE Stock
(
    Stock_ID INT PRIMARY KEY,
    Product_ID INT,
    Available_Quantity INT,
    FOREIGN KEY(Product_ID) REFERENCES Product1(Product_ID)
);

INSERT INTO Stock VALUES
    (1, 1, 100), 
    (2, 2, 50), 
    (3, 3, 200), 
    (4, 4, 80), 
    (5, 5, 150);

SELECT * FROM Stock;

CREATE TABLE Transaction
(
    Transaction_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Quantity INT,
    Total_Price DECIMAL(10, 2),
    Transaction_Date DATE,
    FOREIGN KEY(Customer_ID) REFERENCES customer1(Customer_ID),
    FOREIGN KEY(Product_ID) REFERENCES Product1(Product_ID)
);
INSERT INTO Transaction VALUES
    (1, 1, 1, 2, 21.98, '2023-05-24'),
    (2, 2, 2, 3, 26.97, '2023-05-25'),
    (3, 3, 3, 1, 5.99, '2023-05-26'),
    (4, 4, 4, 5, 64.95, '2023-05-27'),
    (5, 5, 5, 2, 5.98, '2023-05-28');

SELECT * FROM Transaction;
SELECT Product_Name, Available_Quantity FROM Stock INNER JOIN Product1 ON Stock.Product_ID = Product1.Product_ID WHERE Product_Name = "Rice";

