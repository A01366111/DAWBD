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
SELECT * 
FROM Alumno
SELECT * 
FROM Carrera
SELECT * 
FROM Entregan
SELECT * 
FROM Materiales
SELECT * 
FROM Proveedores
SELECT * 
FROM Proyectos

INSERT INTO Entregan Values(0,'AAAA800101',0,'1-jan-02',0)
Delete from Entregan where Clave = 0 

  ALTER TABLE entregan add constraint cfentreganclave 
  foreign key (clave) references materiales(clave); 
  ALTER TABLE entregan add constraint rfcentreganclave 
  foreign key (rfc) references proveedores(rfc); 
    ALTER TABLE entregan add constraint Numentreganclave 
  foreign key (Numero) references Proyectos(Numero); 
  sp_helpconstraint entregan
  INSERT INTO entregan values (1000, 'AAAA800101', 5000, GETDATE(), 0); 
   Delete from Entregan where Clave = 1000 and RFC = 'AAAA800101' and Numero = 5000 and Cantidad = 0
  SELECT * 
  FROM Entregan

