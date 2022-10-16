USE universidad
CREATE TABLE Nombres_dba_i
(SIS_EST1 varchar (30) primary key not null,
nonbres1 varchar (50) not null 
)
CREATE TABLE Nombres_dba_ii
(SIS_EST2 varchar (30) primary key not null,
nonbres2 varchar (50) not null 
)
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS84956871','William')
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS14569823','Victor')
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS96873548','Mijail')
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS15495683','karen')
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS12889154','Brayan')
insert into Nombres_dba_i(SIS_EST1,nonbres1) values ('SIS98756312','Ariel')


insert into Nombres_dba_ii(SIS_EST2,nonbres2) values ('SIS14569823','Victor')
insert into Nombres_dba_ii(SIS_EST2,nonbres2) values ('SIS12889154','Brayan')
insert into Nombres_dba_ii(SIS_EST2,nonbres2) values ('SIS96865548','Samuel')
insert into Nombres_dba_ii(SIS_EST2,nonbres2) values ('SIS15495983','Ana')


select*
from Nombres_dba_ii



select n1.nonbres1,n2.nonbres2
from Nombres_dba_i as n1
inner join Nombres_dba_ii as n2 on n1.SIS_EST1=n2.SIS_EST2




select n1.nonbres1,SIS_EST1
from Nombres_dba_i as n1
inner join Nombres_dba_ii as n2 on n1.nonbres1=n2.nonbres2
where SIS_EST1 = SIS_EST2 and SIS_EST2 = SIS_EST1