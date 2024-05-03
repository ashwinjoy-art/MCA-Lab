CREATE DATABASE OnlineStore;
USE OnlineStore;
CREATE TABLE products
(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50)
);
INSERT INTO products VALUES 
    (1, 'Phone', 'Electronics'),
    (2, 'Shirt', 'Clothing'),
    (3, 'Laptop', 'Electronics'),
    (4, 'Shoes', 'Footwear'),
    (5, 'Watch', 'Accessories');
    
SELECT * FROM products;
SELECT name, category FROM products WHERE category = 'Electronics' UNION SELECT name, category FROM products WHERE category = 'Clothing';
SELECT name, category FROM products WHERE category = 'Clothing' UNION ALL SELECT name, category FROM products WHERE category = 'Clothing';

