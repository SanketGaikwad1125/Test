
CREATE DATABASE shop_db;

USE shop_db;

CREATE TABLE Products (ProductId int, ProductName varchar(200), Category varchar(200), Price int)

INSERT INTO `shop_db`.`Products` 
(`ProductId`, `ProductName`, `Category`, `Price`) 
VALUES 
(1, 'Milk', 'Dairy', 70), 
(2, 'Bread', 'Bakery', 50);

SELECT * FROM PRODUCTS
