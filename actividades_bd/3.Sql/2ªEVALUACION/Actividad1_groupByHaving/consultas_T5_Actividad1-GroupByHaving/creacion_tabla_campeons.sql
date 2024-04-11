create table campeons (
	cnum varchar(5) primary key,
	cnom varchar(20),
	tipus varchar(20),
	preu numeric(4),
	data date
);

insert into campeons (cnum,cnom,tipus,preu,data)
values ('c1', 'Akali','assassi', 790, '11/05/2019'),
		('c2', 'Brand','assassi', 975, '24/09/2019'),
		('c3', 'Caitlyn','mag', 880, '01/01/2020'),
		('c4', 'Diana','carry', 975, '24/09/2019'),
		('c6', 'Elisei','mag', 975, '11/05/2019');
		
insert into campeons (cnum,cnom,tipus,data)
values	('c5', 'Draven','mag','11/05/2019');