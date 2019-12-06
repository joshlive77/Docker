CREATE DATABASE Test2DB
GO
USE Test2DB
CREATE TABLE Inventory (id INT, name NVARCHAR(50), quantity INT)
INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
SELECT Name from sys.Databases
GO
SELECT * FROM Inventory WHERE quantity > 152;
GO
QUIT
