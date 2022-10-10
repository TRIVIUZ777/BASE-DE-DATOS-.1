create database universidad
use universidad
create table materias
(id_mat integer identity primary key not null,
nombre_mat varchar (100) not null,
cod_mat varchar (100) not null
)

create table escuela
(id_esc integer identity primary key not null,
nombre varchar (100) not null,
direccion varchar (100) not null
)

create table estudiantes
(id_est_cedula integer identity primary key not null,
nombres varchar (100) not null,
apellidos varchar (100) not null,
sexo varchar (10) not null,
direccion varchar (100) not null,
telefono integer not null,
email varchar (50) not null,
edad integer not null,
id_esc integer not null
foreign key (id_esc) references escuela (id_esc),
)

create table periodo
(id_per integer identity primary key not null,
ano_gestion integer not null,
semestre varchar (50) not null,

)
create table kardex
(id_kar integer identity primary key not null,
nota_num integer not null,
nota_alfabe varchar (100) not null,
estado varchar (10) not null,
id_mat integer not null,
id_est_cedula integer not null,
id_per integer not null,

foreign key (id_mat) references materias (id_mat),
foreign key (id_est_cedula) references estudiantes (id_est_cedula),
foreign key (id_per) references periodo (id_per),
)
select*
from kardex


INSERT INTO escuela (nombre, direccion) VALUES ('San Felipe Asturias II', 'Zona Illampu Av.
Prol. San Lorenzo');


INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email,
edad, id_esc) VALUES
('Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575,
'xime@gmail.com', 25, 1);
INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email,
edad, id_esc) VALUES
('Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576,
'saul@gmail.com', 24, 1);
INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email,
edad, id_esc) VALUES('Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com',
28, 1);
INSERT INTO estudiantes (nombres, apellidos, sexo, direccion, telefono, email,
edad, id_esc) VALUES
('Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578,
'joel@gmail.com', 21, 1);
INSERT INTO estudiantes ( nombres, apellidos, sexo, direccion, telefono, email,
edad, id_esc) VALUES
( 'Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579,
'augusto@gmail.com', 20, 1);


INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Introduccion a la Arquitectura','ARQ-101');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Urbanismo y Diseno','ARQ-102');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Matematica discreta','ARQ-104');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Fisica Basica','ARQ-105');

INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');

truncate table kardex;

INSERT INTO kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per) VALUES (51,'cincuenta y uno','APROBADO',1,1,1);
INSERT INTO kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per) VALUES (31,'treinta y uno','REPROBADO',2,2,2);
INSERT INTO kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per) VALUES (61,'sesenta y uno','APROBADO',1,3,1);
INSERT INTO kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per) VALUES (41,'cuarentaenta y uno','REPROBADO',2,4,2);
INSERT INTO kardex(nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per) VALUES (81,'ochentaenta y uno','APROBADO',4,4,4);

select* from escuela
select* from estudiantes
select* from materias
select* from periodo
select* from kardex

select* 
from estudiantes 
where edad >= 18 






select*
from estudiantes
where sexo = 'masculino' and edad >= 18



select* 
from estudiantes 
where sexo = 'femenino'

SELECT est.nombres, est.apellidos
FROM kardex AS kar, estudiantes AS est
WHERE kar.id_est_cedula = est.id_est_cedula AND
kar.nota_num >= 51;

select est.nombres, est.apellidos,kar.nota_num
from estudiantes as  est
INNER JOIN kardex as kar on kar.id_est_cedula = est.id_est_cedula
 where kar.nota_num >= 51;


 select est.nombres, est.apellidos,kar.nota_num
from estudiantes as  est
INNER JOIN kardex as kar on kar.id_est_cedula = est.id_est_cedula
 where kar.nota_num >= 51 and est.edad > 25







 USE universidad

select est.nombres, est.apellidos,esc.direccion
from estudiantes as  est
INNER JOIN escuela as ESC on ESC.id_esc = est.id_esc
 where ESC.nombre='San Felipe Asturias II'







