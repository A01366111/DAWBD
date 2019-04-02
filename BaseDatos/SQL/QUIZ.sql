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
FROM Alumno

 SELECT DISTINCT M.Descripcion
 FROM Materiales M, Entregan E, Proyectos P
 where M.Clave = E.Clave and P.Numero = E.Numero AND P.Denominacion = 'Azteca'

set dateformat dmy
SELECT p.Denominacion, SUM(E.Cantidad) as 'Total de unidades'
FROM Proyectos P, Entregan E
WHERE P.Numero = E.Numero AND (E.Fecha BETWEEN '01/01/2010' AND '31/12/2010') 
GROUP BY P.Denominacion
order by 'Total de unidades' desc

SELECT DISTINCT M.Clave, M.descripcion
from materiales M
where M.Clave not in(select E.clave from Entregan as E)