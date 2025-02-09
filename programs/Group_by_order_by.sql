use loki;

CREATE TABLE productOrders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO productOrders (CustomerName, ProductName, Category, Quantity, Price,
 OrderDate) VALUES
('Alice', 'Laptop', 'Electronics', 2, 800.00, '2025-01-01'),
('Bob', 'Smartphone', 'Electronics', 1, 600.00, '2025-01-01'),
('Alice', 'Chair', 'Furniture', 4, 120.00, '2025-01-02'),
('Charlie', 'Desk', 'Furniture', 2, 200.00, '2025-01-03'),
('Bob', 'Headphones', 'Accessories', 5, 50.00, '2025-01-03'),
('Alice', 'Tablet', 'Electronics', 1, 300.00, '2025-01-04'),
('Charlie', 'Mouse', 'Accessories', 10, 20.00, '2025-01-05'),
('Alice', 'Keyboard', 'Accessories', 2, 40.00, '2025-01-06');

select CustomerName, sum(quantity) from productOrders group by CustomerName;

select CustomerName, sum(price * quantity) as totalsaleamount
 from productOrders group by CustomerName;
 
select category, sum(quantity) as totalorders 
 from productorders group by category;

select category, sum(price *quantity) as totalrevenuegenerated 
 from productorders group by category;
 
select CustomerName, avg(quantity) as avgordervalue
 from productOrders group by CustomerName;
 
select category, max(quantity) as maxquantity 
 from productorders group by category;
 
select CustomerName,  min(OrderDate) from productorders group by CustomerName;

select productname,  sum(quantity) from productorders group by productname;

select category, avg(price) as avgprice 
 from productorders group by category;
 
select category, COUNT(DISTINCT CustomerName) as UniqueCustomers
 from productorders group by category;

select OrderDate, sum(quantity)  as totalquantity 
from productorders group by OrderDate;

select OrderDate, sum(price *quantity) as totalrevenuegenerated 
 from productorders group by OrderDate;
 
select category, CustomerName, sum(quantity) as totalquantity
 from productorders group by category, customername;

select customername, sum(price *quantity) as highestrevenue 
 from productorders group by customername;

select productname, sum(price *quantity) as totalrevnuebyproduct 
 from productorders group by productname;
 
select productname, avg(quantity) as avgquantitybyproduct 
 from productorders group by productname;
 
select category, max(price) as maxprice from productorders
GROUP BY category;

select Category, COUNT(DISTINCT ProductName) AS UniqueProducts
FROM productorders
GROUP BY Category;

SELECT ProductName, OrderDate, SUM(Quantity) AS TotalQuantity
FROM productorders
GROUP BY ProductName, OrderDate
ORDER BY OrderDate, ProductName;

SELECT category, SUM(Quantity) FROM productorders AS SubOrders
 GROUP BY SubOrders.Category;