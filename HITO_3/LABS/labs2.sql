use universidad

create table A
( l1 varchar (1) primary key not null,
)
create table B
( l2 varchar (1) primary key not null,
)
insert into A values ('D'),
('E'),
('F'),
('G'),
('H');

DROP TABLE A


insert into B values ('A')
insert into B values ('B')
insert into B values ('E')
insert into B values ('H')

SELECT tb.l2
from A as ta
INNER JOIN B as tb on tb.l2 =l1;


select*
from Lista.l2

select est.nombres, est.apellidos,est.edad
from estudiantes as  est
INNER JOIN kardex as kar on kar.id_est_cedula = est.id_est_cedula
 where kar.nota_num < 51 and est.sexo = 'masculino'



 create table TABNUM1
( NUM1 INTEGER not null,
)
create table TABNUM_2
( NUM2 INTEGER not null,
)
 DROP TABLE TABNUM2

insert into TABNUM1 VALUES (1)
insert into TABNUM1 values (2)
insert into TABNUM1 values (3)
insert into TABNUM1 values (4)
insert into TABNUM1 values (5)
insert into TABNUM1 values (6)
insert into TABNUM1 values (7)

insert into TABNUM_2 values (4)
insert into TABNUM_2 values (5)
insert into TABNUM_2 values (6)
insert into TABNUM_2 values (7)
insert into TABNUM_2 values (8)
insert into TABNUM_2 values (9)

SELECT NUM2
from TABNUM1 as tN1
INNER JOIN TABNUM_2 as tb on tb.NUM2 =NUM1
WHERE tb.NUM2>5 AND tN1.NUM1 > 5

SELECT NUM2
from TABNUM1 as tN1
INNER JOIN TABNUM_2 as tb on tb.NUM2 =NUM1

 create table NOTAS_1
( NOTS1 INTEGER not null,
)
create table NOTAS_2
( NOTS2 INTEGER not null,
)
create table NOTAS_3
( NOTS3 INTEGER not null,
)


insert into NOTAS_1(NOTS1) VALUES (30),
(40),
(51),
(60),
(75)


insert into NOTAS_2(NOTS2) VALUES (51),
(60),
(100)


insert into NOTAS_3(NOTS3) VALUES (20),
(21),
(23),
(48),
(51),
(60)


DROP TABLE  NOTAS_3

SELECT NT1.NOTS1,NT2.NOTS2,NT3.NOTS3
from NOTAS_2 as NT2  
INNER JOIN NOTAS_1 as NT1 on  NT1.NOTS1 = NT2.NOTS2
INNER JOIN NOTAS_3 as NT3 ON NT1.NOTS1 = NT3.NOTS3;



WHERE tb.NUM2>5 AND tN1.NUM1 > 5