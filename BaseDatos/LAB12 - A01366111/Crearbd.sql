INSERT INTO Materiales values(1000, 'JavierIQ',1000)
SELECT *
FROM Materiales
DELETE FROM Materiales WHERE Clave=100 and Costo = 1000
ALTER TABLE Materiales add Constraint llaveMateriales PRIMARY KEY (Clave)
sp_helpconstraint Materiales
SELECT * 
FROM Proveedores
ALTER TABLE Proveedores add Constraint llaveProveedores PRIMARY KEY (RFC)
sp_helpconstraint Proveedores
SELECT * 
FROM Proyectos
ALTER TABLE Proyectos add Constraint llaveProyectos PRIMARY KEY (Numero)