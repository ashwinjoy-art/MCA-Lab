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

CREATE TABLE accessories 
(
    id INT PRIMARY KEY,
    pname VARCHAR(50),
    pcategory VARCHAR(50)
);

INSERT INTO accessories VALUES
    (1, 'necklace', 'gold'),
    (2, 'bangle', 'gold'),
    (3, 'earring', 'rosegold'),
    (4, 'ring', 'silver'),
    (5, 'shirt', 'clothing');


SELECT * FROM products;
-- Union Operation:
SELECT name, category FROM products WHERE category = 'Electronics' UNION SELECT name, category FROM products WHERE category = 'Clothing';
SELECT name, category FROM products WHERE category = 'Clothing' UNION ALL SELECT name, category FROM products WHERE category = 'Clothing';
SELECT * FROM products UNION SELECT * FROM accesories;
ALTER TABLE accesories ADD price int;
UPDATE accessories SET price = 22000 WHERE id = 1;
UPDATE accessories SET price = 20000 WHERE id = 2 AND category = 'gold';
UPDATE accessories SET price = 16000 WHERE id = 3;
UPDATE accessories SET price = 15000 WHERE id = 4;
UPDATE accessories SET price = 2000 WHERE id = 2 AND category = 'clothing';
SELECT * FROM accessories;
SELECT id,name,category,null AS price FROM products UNION SELECT * FROM accesories;
-- Union all operation :
SELECT * FROM products UNION ALL SELECT * FROM accesories;
-- Intersection Operation :
SELECT * FROM products INTERSECT SELECT * FROM accessories;
-- Minus or Except operation :
SELECT * FROM products EXCEPT SELECT * FROM accesories;