DROP DATABASE KALBE;
CREATE DATABASE KALBE;
USE KALBE;
CREATE TABLE Inventory (
Item_code int PRIMARY KEY,
Item_name varchar(70),
Item_price int,
Item_total int
);
INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
VALUES 
	(2341,'Promag Tablet',3000,100),
	(2342,'Hydro Coco 250ML',7000,20),
	(2343,'Nutrive Benecol 100ML',20000,30),
	(2344,'Blackmores Vit C 500Mg',95000,45),
	(2345,'Entrasol Gold 370G',90000,120);

SELECT Item_name
FROM Inventory
ORDER BY Item_total DESC
LIMIT 1;

UPDATE Inventory
SET Item_price = 85000
WHERE Item_name = 'Entrasol Gold 370G';

-- INSERT INTO Inventory (Item_code, Item_name, Item_price, Item_total)
-- VALUES (2343, NULL, NULL, NULL);

SET @min_total = (SELECT MIN(Item_total) FROM Inventory);
DELETE FROM Inventory
WHERE Item_total = @min_total;

SELECT *
FROM Inventory;