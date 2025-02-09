use loki;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Quantity INT,
    ManufacturedDate DATE
);

INSERT INTO Products (ProductName, Category, Price, Quantity, ManufacturedDate)
VALUES 
('Laptop', 'Electronics', 800.00, 5, '2024-12-01'),
('Smartphone', 'Electronics', 600.00, 8, '2024-12-05'),
('Tablet', 'Electronics', 300.00, 10, '2024-12-10'),
('Chair', 'Furniture', 120.00, 15, '2024-12-15'),
('Desk', 'Furniture', 200.00, 7, '2024-12-20'),
('Headphones', 'Accessories', 50.00, 25, '2024-12-25'),
('Mouse', 'Accessories', 20.00, 50, '2024-12-30');

select sum(quantity) as total_quantity from products;
select avg(price) as avg_price from products;
select max(price) as max_price from products;
select min(price) as min_price from products;
select count(1) as total_products from products;
select sum(Price * Quantity) as total_revenue from products;
select sum(Quantity) as electronic_qty from products where category = 'Electronics';
select avg(Quantity) as avg_furn from products where category = 'Furniture';
select max(Quantity) as avg_furn from products 
where category = 'Accessories' and productname = 'Mouse';
select count(productname) from products where price < 100;
SELECT productname,price FROM products ORDER BY price ASC;
SELECT productname, price FROM products ORDER BY price desc;
SELECT productname FROM products ORDER BY category ASC, price DESC;
SELECT productname FROM products ORDER BY ManufacturedDate ASC;
SELECT productname FROM products ORDER BY ProductName ASC;
SELECT * FROM products ORDER BY quantity DESC;
SELECT * FROM products ORDER BY price DESC LIMIT 3;
SELECT * FROM products where category = 'Furniture' ORDER BY price ASC limit 1;
SELECT * from products ORDER BY quantity ASC;
SELECT * from products ORDER BY category ASC, ProductName ASC;
SELECT productname, (Price * Quantity) as totalstockvalue
FROM products;
SELECT category as productcategory
FROM products;
SELECT productname, Quantity as stockavailble
FROM products;
SELECT (Price * Quantity) as revenuegenerated
FROM products;
SELECT productname, price as unitprice
FROM products;
select avg(price) as avgprice from products;
SELECT category, sum(quantity) as totalstockvalue
FROM products group by category;
SELECT productid, productname as productcode
FROM products;
SELECT price as costperunit, quantity as stock
FROM products;
SELECT category, avg(price) as averagecategoryprice
FROM products group by category;
SELECT * FROM products where productname like 'L%';
SELECT * FROM products where productname like '%phone';
SELECT * FROM products where productname like '%tab%';
SELECT * FROM products where category like 'fur%';
SELECT * FROM products where category like '%e%';
SELECT * FROM products where length(productname) = 6;
SELECT * FROM products where productname like '%head%';
SELECT * FROM products where category like '%ics';
SELECT * FROM products WHERE SUBSTRING(productName, 2, 1) = 'a';
SELECT * FROM Products WHERE Category LIKE 'A%' OR Category LIKE 'E%';