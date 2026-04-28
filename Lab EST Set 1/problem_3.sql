DROP TABLE IF EXISTS Tbl_Orders;
DROP TABLE IF EXISTS Tbl_Products;
DROP MATERIALIZED VIEW IF EXISTS order_summary;

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

CREATE MATERIALIZED VIEW order_summary AS
SELECT prod_id,
SUM(qty) AS total_qty
FROM Tbl_Orders
GROUP BY prod_id;

SELECT * FROM order_summary;
