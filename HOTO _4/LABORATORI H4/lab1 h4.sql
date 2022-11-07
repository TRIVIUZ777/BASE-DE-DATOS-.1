CREATE DATABASE HITO4_FUNCIONES
USE HITO4_FUNCIONES
--	MANEJO DE FUNCIONES
--	UNA FUNCION DE AGREGACION SIEMPRE SE EJECUTA EN LA CLAUSULA SELECT
--	ADEMAS SIEMPRE RETORNA UN UNICO VALOR(UNA fILA)
--	ES APLICADO A UN GRUPO DE REGISTROS (A UNA COLUMNA DE LA TABLA)
CREATE TABLE ESTUDIANTES 
(
	ID_EST INTEGER IDENTITY PRIMARY KEY NOT NULL,
	NOMBRES VARCHAR (100)  NOT NULL,
	APELLIDOS VARCHAR (100)  NOT NULL,
	EDAD INTEGER  NOT NULL,
	FONO INTEGER  NOT NULL,
	EMAIL VARCHAR(100)  NOT NULL,
	DIRECCION VARCHAR (100) NOT NULL,
	GENERO VARCHAR (100) NOT NULL
);

DROP TABLE ESTUDIANTES



create table Estudiantes(
	nombre varchar(25) not null,
	id_est integer identity primary key not null,
	apellido varchar(30) not null,
	edad integer not null,
	fono integer not null,
	email varchar(100) not null,
	direccion varchar(200) not null,
	genero varchar(50) not null);

INSERT INTO estudiantes (nombre, apellido, edad, fono, email, direccion, genero) VALUES 
	('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino'),
	('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino'),
	('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino'),
	('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino'),
	('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino');

 SELECT EST.*
 FROM Estudiantes AS EST

 --	DETERMINAR CUANTOS ESTUDIANTES REGISTRDOS HAY

 SELECT COUNT(*)
 FROM Estudiantes AS EST

 SELECT COUNT(EST.id_est)
 FROM Estudiantes AS EST

 --DETERMINAR LA MINIMA EDAD DE LOS ESTUDIANTES

 SELECT min(est.edad)
FROM estudiantes AS est;


 SELECT COUNT(EST.genero)
 FROM Estudiantes AS EST
 WHERE genero='femenino'

  SELECT COUNT(EST.genero)
 FROM Estudiantes AS EST
 WHERE genero='masculino'

  SELECT COUNT(EST.edad)
 FROM Estudiantes AS EST
 WHERE edad=


 SELECT COUNT(EST.edad)
 FROM Estudiantes AS EST
 WHERE edad=;

 ALTER TABLE Estudiantes ADD LICENCIA_CONDUCIR BIT;


 SELECT * FROM Estudiantes


 INSERT INTO estudiantes (nombre, apellido, edad, fono, email, direccion, genero,LICENCIA_CONDUCIR) VALUES 
	('Ana' ,'Gonzales Veliz', 20, 2832115, 'Ana@gmail.com', 'Av. 6 de Agosto', 'femenino',1),
	('Pepito' ,'Mavir Uria', 25, 2832116, 'Pepito@gmail.com', 'Av. 6 de Agosto','masculino' ,0)

	 SELECT COUNT(*)
 FROM Estudiantes AS EST

 SELECT COUNT(EST.LICENCIA_CONDUCIR)
 FROM Estudiantes AS EST

  SELECT COUNT(EST.id_est)
 FROM Estudiantes AS EST

 --determinar el promedio de las edades

  SELECT avg(est.edad)
FROM estudiantes AS est;



--Crear la consulta SQL que obtenga la mayor edad de los estudiantes (cuyo sexo seas masculino o femenino).


  SELECT max(est.edad)
FROM estudiantes AS est
 WHERE est.genero ='masculino'

   SELECT max(est.edad)
FROM estudiantes AS est
 WHERE est.genero ='femenino'or est.genero ='masculino'



  SELECT EST.*
 FROM Estudiantes AS EST
 where genero='masculino'

 --Determinar cuántos estudiantes hay, en donde su apellido contenga la PALABRA “el” y además sea del género masculino.
   SELECT count(est.id_est)
FROM estudiantes AS est
 WHERE est.apellido like'%EL%' and est.genero ='masculino';
 
 -- Determinar cuántos estudiantes tienen una edad mayor  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.
   SELECT EST.*
 FROM Estudiantes AS EST;

SELECT count(est.id_est)
FROM estudiantes AS est
WHERE est.edad> 20  and est.edad<30 and est.LICENCIA_CONDUCIR BETWEEN 0 and 1;


   SELECT count(est.edad)
FROM estudiantes AS est
 WHERE est.edad=20
 
 
SELECT count(est.id_est)
FROM estudiantes AS est
WHERE est.edad BETWEEN  21  and 29 and est.LICENCIA_CONDUCIR=0;

create table escuela(
id_esc integer identity primary key not null,
nombre varchar(100) not null,
dierccion varchar(100) not null,
turno varchar(100) not null);

insert into escuela(nombre,dierccion,turno) values ('Felipe II','Av. 6 de Agosto','Tarde'),('San Jose','Av. 6 de Agosto','Mañana')
select * from escuela

create table Estudiantes(
	nombre varchar(25) not null,
	id_est integer identity primary key not null,
	apellido varchar(100) not null,
	edad integer not null,
	fono integer not null,
	email varchar(100) not null,
	direccion varchar(200) not null,
	genero varchar(50) not null,
	id_esc integer not null,
	LICENCIA_CONDUCIR BIT,
	foreign key (id_esc) references escuela (id_esc )
	);


	
INSERT INTO estudiantes (nombre, apellido, edad, fono, email, direccion, genero,id_esc) VALUES 
	('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',1),
	('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',1),
	('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',1),
	('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',2),
	('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',2),
	('Ana' ,'Gonzales Veliz', 20, 2832115, 'Ana@gmail.com', 'Av. 6 de Agosto', 'femenino',2),
	('Pepito' ,'Mavir Uria', 25, 2832116, 'Pepito@gmail.com', 'Av. 6 de Agosto','masculino',2);

	select *from escuela
	select *from Estudiantes


	drop table Estudiantes
	drop table escuela