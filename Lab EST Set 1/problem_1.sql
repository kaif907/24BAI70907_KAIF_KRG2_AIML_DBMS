DROP TABLE IF EXISTS Tbl_Orders;
DROP TABLE IF EXISTS Tbl_Products;

CREATE TABLE Tbl_Products (
    prod_id INT PRIMARY KEY,
    prod_name VARCHAR(100),
    category VARCHAR(50),
    price INT,
    stock_qty INT
);

CREATE TABLE Tbl_Orders (
    order_id INT PRIMARY KEY,
    prod_id INT,
    cust_id INT,
    order_date DATE,
    qty INT,
    FOREIGN KEY (prod_id) REFERENCES Tbl_Products(prod_id)
);

INSERT INTO Tbl_Products VALUES
(501,'Laptop Pro','Electronics',75000,15),
(502,'Ergo Chair','Furniture',15000,8);

INSERT INTO Tbl_Orders VALUES
(9001,501,101,'2026-04-20',1),
(9002,502,102,'2026-04-21',2);

SELECT p.prod_name,
       COALESCE(SUM(o.qty),0) AS total_quantity
FROM Tbl_Products p
LEFT JOIN Tbl_Orders o
ON p.prod_id = o.prod_id
GROUP BY p.prod_id, p.prod_name;
