IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Materiales')
DROP TABLE Materiales




CREATE TABLE Materiales
(
  Clave numeric(5) not null,
  Descripcion varchar(50),
  Costo numeric(8,2)
)

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Proveedores')
DROP TABLE Proveedores

CREATE TABLE Proveedores
(
  RFC char(13) not null,
  RazonSocial varchar(50)
)
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Proyectos')
DROP TABLE Proyectos


CREATE TABLE Proyectos
(
  Numero numeric(5) not null,
  Denominacion varchar(50)
)
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Entregan')
DROP TABLE Entregan


CREATE TABLE Entregan
(
  Clave numeric(5) not null,
  RFC char(13) not null,
  Numero numeric(5) not null,
  Fecha DateTime not null,
  Cantidad numeric(8,2)
)

BULK INSERT a1366111.a1366111.[Materiales]
  FROM 'e:\wwwroot\rcortese\materiales.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
  )

BULK INSERT a1366111.a1366111.[Proyectos]
  FROM 'e:\wwwroot\rcortese\proyectos.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
  )

BULK INSERT a1366111.a1366111.[Proveedores]
  FROM 'e:\wwwroot\rcortese\proveedores.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
  )

SET DATEFORMAT dmy

BULK INSERT a1366111.a1366111.[Entregan]
  FROM 'e:\wwwroot\rcortese\entregan.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
  )

  SELECT * 
  FROM Materiales
 
 SELECT DISTINCT Descripcion
 FROM Materiales M, Proyectos P
 WHERE Denominacion = 'Az'

SELECT DISTINCT SUM(E.Cantidad) as 'Total de unidades'
FROM Proyectos P, Entregan E
WHERE P.Numero = E.Numero AND (E.Fecha BETWEEN '01/01/2010' AND '31/12/2010') 
GROUP BY P.Denominacion
order by 'Total de unidades' desc

Select Clave, Descripcion
From Materiales as M
where M.clave 
not in(Select distinct E.Clave
from  Entregan as E)
