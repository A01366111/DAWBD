CREATE TABLE Clientes_Banca 
(
	NoCuenta varchar(5) PRIMARY KEY,
	Nombre varchar(30),
	Saldo numeric(10,2),
	
)

CREATE TABLE Tipos_Movimiento
(
	ClaveM varchar(2) PRIMARY KEY,
	Descripcion varchar(30)
)

CREATE TABLE Movimientos
(
	Fecha datetime,
	Monto numeric(10,2),
	NoCuenta varchar(5) FOREIGN KEY REFERENCES Clientes_Banca(NoCuenta),
	ClaveM varchar(2) FOREIGN KEY REFERENCES Tipos_Movimiento(ClaveM)
)

BEGIN TRANSACTION PRUEBA1 
INSERT INTO Clientes_Banca VALUES('001', 'Manuel Rios Maldonado', 9000); 
INSERT INTO Clientes_Banca VALUES('002', 'Pablo Perez Ortiz', 5000); 
INSERT INTO Clientes_Banca VALUES('003', 'Luis Flores Alvarado', 8000); 
COMMIT TRANSACTION PRUEBA1 

SELECT * 
FROM Clientes_Banca

BEGIN TRANSACTION PRUEBA2 
INSERT INTO Clientes_Banca VALUES('004','Ricardo Rios Maldonado',19000); 
INSERT INTO Clientes_Banca VALUES('005','Pablo Ortiz Arana',15000); 
INSERT INTO Clientes_Banca VALUES('006','Luis Manuel Alvarado',18000); 

ROLLBACK TRANSACTION PRUEBA2 

BEGIN TRANSACTION PRUEBA3 
INSERT INTO Tipos_Movimiento VALUES('A','Retiro Cajero Automatico'); 
INSERT INTO Tipos_Movimiento VALUES('B','Deposito Ventanilla'); 
COMMIT TRANSACTION PRUEBA3 

SELECT * 
FROM Tipos_Movimiento


BEGIN TRANSACTION PRUEBA4 
INSERT INTO Movimientos VALUES(GETDATE(),500,'001','A'); 
UPDATE Clientes_Banca SET Saldo = Saldo -500 
WHERE NoCuenta='001' 
COMMIT TRANSACTION PRUEBA4 

BEGIN TRANSACTION PRUEBA5 
INSERT INTO Clientes_Banca VALUES('005','Rosa Ruiz Maldonado',9000);
INSERT INTO Clientes_Banca VALUES('006','Luis Camino Ortiz',5000); 
INSERT INTO Clientes_Banca VALUES('001','Oscar Perez Alvarado',8000); 


IF @@ERROR = 0 
COMMIT TRANSACTION PRUEBA5 
ELSE 
BEGIN 
PRINT 'A transaction needs to be rolled back' 
ROLLBACK TRANSACTION PRUEBA5 
END 

SELECT * FROM Clientes_Banca
