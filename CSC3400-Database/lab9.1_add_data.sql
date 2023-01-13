--Lab Practice 9.1 Latihan Tambahan Stored Procedure and Triggers

create table registration (
matric number,
coursecode varchar2(10),
sem_session varchar2(20),
grade varchar2(2),
credit number,
constraint pk_reg primary key(matric, coursecode, sem_session));

desc registration;

insert into registration values (214321,'CSC3100','SEM 1 2021-2022','A',3);
insert into registration values (214321,'CSC3003','SEM 1 2021-2022','A-',3);
insert into registration values (214321,'SKP2101','SEM 1 2021-2022','B+',3);
insert into registration values (214321,'SKP3112','SEM 1 2021-2022','A',2);
insert into registration values (214321,'SKP3122','SEM 1 2021-2022','B-',3);
insert into registration values (214321,'PRT2009','SEM 1 2021-2022','B',2);
insert into registration values (214321,'QKS2127','SEM 1 2021-2022','A',1);

insert into registration values (214326,'CSC3100','SEM 1 2021-2022','A',3);
insert into registration values (214326,'CSC3003','SEM 1 2021-2022','A',3);
insert into registration values (214326,'SKP2101','SEM 1 2021-2022','A-',3);
insert into registration values (214326,'SKP3112','SEM 1 2021-2022','A',2);
insert into registration values (214326,'SKP3122','SEM 1 2021-2022','A-',3);
insert into registration values (214326,'PRT2009','SEM 1 2021-2022','A',2);
insert into registration values (214326,'QKS2127','SEM 1 2021-2022','A',1);

insert into registration values (214321,'CSC3101','SEM 2 2021-2022','B+',3);
insert into registration values (214321,'CSC3200','SEM 2 2021-2022','A-',3);
insert into registration values (214321,'CNS3200','SEM 2 2021-2022','A-',3);
insert into registration values (214321,'SSE4202','SEM 2 2021-2022','A-',3);
insert into registration values (214321,'LPE2401','SEM 2 2021-2022','A',3);
insert into registration values (214321,'QKW2108','SEM 2 2021-2022','A',1);

insert into registration values (214326,'CSC3101','SEM 2 2021-2022','A',3);
insert into registration values (214326,'CSC3200','SEM 2 2021-2022','A-',3);
insert into registration values (214326,'CNS3200','SEM 2 2021-2022','A-',3);
insert into registration values (214326,'SSE4202','SEM 2 2021-2022','A',3);
insert into registration values (214326,'LPE2401','SEM 2 2021-2022','A',3);
insert into registration values (214326,'QKW2108','SEM 2 2021-2022','A-',1);

create table grade_point (
grade varchar2(2) primary key,
point number(6,2));

insert into grade_point values('A',4.0);
insert into grade_point values('A-',3.75);
insert into grade_point values('B+',3.5);
insert into grade_point values('B',3.0);
insert into grade_point values('B-',2.75);
insert into grade_point values('C+',2.5);
insert into grade_point values('C',2.0);
insert into grade_point values('C-',1.75);
insert into grade_point values('D+',1.5);
insert into grade_point values('D',1.0);
insert into grade_point values('F',0);