-- crear base de datos
CREATE DATABASE TestDB
-- mostrar bases de datos
SELECT Name from sys.Databases
-- ejecutar instrucciones
GO
-- salir de la base de datos
QUIT
-- seleccionar base de datos
USE TestDB
-- crear tablas
CREATE TABLE Inventory (id INT, name NVARCHAR(50), quantity INT)
-- insertar datos
INSERT INTO Inventory VALUES (1, 'banana', 150); INSERT INTO Inventory VALUES (2, 'orange', 154);
-- consulta
SELECT * FROM Inventory WHERE quantity > 152;
