create database UNIVERSIDAD

use UNIVERSIDAD

create table persona(

id_persona varchar(20) primary key,
nombres varchar (20),
apellidos varchar (20),
genero varchar (100) ,
edad integer,
ci varchar(20));

insert into persona(id_persona,nombres,apellidos,genero,edad,ci) 
values ('SIS11546719','Brayan Jose','Villca Ichuta','Masculino',20,'11546719');
insert into persona(id_persona,nombres,apellidos,genero,edad,ci) 
values ('SIS63548951','Alex','Lucana Alanoca','Masculino',19,'63548951');
insert into persona(id_persona,nombres,apellidos,genero,edad,ci) 
values ('SIS65849124','Adrian','Quispe Alvarez','Masculino',21,'65849124');



create table materia(
cod_mat varchar (20) primary key,
nombre_materia varchar (20),
aula integer);

insert into materia (cod_mat,nombre_materia,aula) 
values ('540','Base de Datos',214);
insert into materia (cod_mat,nombre_materia,aula) 
values ('545','Programacion',214);
insert into materia (cod_mat,nombre_materia,aula) 
values ('544','Probabilidad',218);



create table inscripción(
id_inscripción integer primary key,
id_persona varchar(20),
cod_mat varchar(20),
semestre varchar(30),
gestion integer,
FOREIGN KEY (id_persona) references persona(id_persona),
FOREIGN KEY (cod_mat) references materia (cod_mat));

insert into inscripción(id_inscripción,id_persona,cod_mat,semestre,gestion) 
values (87559215,'SIS11546719','540','Primer',2022)
insert into inscripción(id_inscripción,id_persona,cod_mat,semestre,gestion) 
values (87589819,'SIS63548951','545','Segundo',2022)
insert into inscripción(id_inscripción,id_persona,cod_mat,semestre,gestion) 
values (87559249,'SIS65849124','544','Primer',2022)


