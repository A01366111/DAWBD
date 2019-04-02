SELECT * 
FROM Materiales

SELECT * 
FROM Entregan

SELECT * 
FROM Proveedores

SELECT * 
FROM Proyectos

SELECT *
FROM Materiales
Where Clave = 1000

select clave,rfc,fecha 
from entregan 


select * 
from materiales,entregan 
where materiales.clave = entregan.clave 

select * 
from entregan,proyectos 
where entregan.numero < = proyectos.numero 

select * 
from entregan 
where clave=1450 
union 
(select * 
from entregan 
where clave=1300)
//¿Cuál sería una consulta que obtuviera el mismo resultado sin usar el operador Unión? Compruébalo. 
select *
from Entregan
where clave = 1300 or clave =1450

(select clave 
from entregan 
where numero=5001) 
intersect 
(select clave from entregan where numero=5018) 

//Minus no existe aquí
select * 
from entregan 
minus
(select * from entregan where clave=1000) 

select * 
from entregan,materiales

set dateformat dmy
SELECT Descripcion
FROM Materiales M, Entregan E
Where Fecha BETWEEN '01/01/2000' AND '31/12/2000' 

set dateformat dmy
SELECT DISTINCT Descripcion
FROM Materiales M, Entregan E
Where Fecha BETWEEN '01/01/2000' AND '31/12/2000' 

SELECT P.Numero, P.Denominacion, E.Fecha, E.Cantidad
FROM Proyectos P, Entregan E
order by desc

set dateformat dmy
SELECT p.Denominacion, SUM(E.Cantidad) as 'Total de unidades'
FROM Proyectos P, Entregan E
WHERE P.Numero = E.Numero 
GROUP BY P.Denominacion
order by 'Total de unidades' desc