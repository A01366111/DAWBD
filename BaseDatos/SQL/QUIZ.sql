CREATE TABLE Carrera
(
	Codigo numeric(10) not null,
	Nombre varchar(50)
)

CREATE TABLE Alumno
(
	Matricula numeric(8)not null,
	Nombre varchar (40),
	ApellidoP varchar(20),
	AMaterno varchar (20),
	Codigo numeric (10)
)

ALTER TABLE "Carrera" 
add Constraint llaveCarrera 
PRIMARY KEY(Codigo);	

ALTER TABLE Alumno 
add Constraint FllaveAlumno 
FOREIGN KEY (Codigo)
REFERENCES Carrera(Codigo)

INSERT INTO Carrera values(01516142,'Ingenieria en sistemas computacionales')
INSERT INTO Carrera values(01316134,'Licenciado en administracion empresas')
INSERT INTO Alumno values(01366111, 'Javier','Iñiguez','Quezada',01516142)
INSERT INTO Alumno values(01331511, 'Hugo','Azpe','Leon',01316134)
INSERT INTO Alumno values(01362121, 'Rodrigo', 'Gomez', 'Silva',01316134)


DELETE FROM Alumno where ApellidoP = 'Gomez'

SELECT * 
FROM Carrera