DROP TABLE IF EXISTS Tbl_Orders;
DROP TABLE IF EXISTS Tbl_Products CASCADE;

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
(9001,501,101,'2026-04-20',1);

CREATE OR REPLACE FUNCTION check_stock()
RETURNS TRIGGER AS
$$
DECLARE available_stock INT;

BEGIN
SELECT stock_qty
INTO available_stock
FROM Tbl_Products
WHERE prod_id = NEW.prod_id;

IF NEW.qty > available_stock THEN
RAISE EXCEPTION 'Insufficient Stock';
END IF;

RETURN NEW;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER stock_check
BEFORE INSERT ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION check_stock();

INSERT INTO Tbl_Orders VALUES
(9002,502,102,'2026-04-21',10);
