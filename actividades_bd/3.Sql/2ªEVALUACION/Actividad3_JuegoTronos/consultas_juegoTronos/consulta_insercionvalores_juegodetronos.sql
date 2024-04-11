insert into casas (id, nombre, region, lema)
values 	(1, 'Stark', 'Norte', 'Se acerca el invierno'),
		(2,'Lannister','Oeste','Los lannister siempre pagan sus deudas'),
		(3,'Targarian','Este','Fuego y sangre'),
		(4,'Greyjoy','Isla de Hierro','Lo que esta muerto nunca muere'),
		(5,'Tyrel','El Dominio','Crece fuerte');
		
insert into temporadas (id, numero_temporada, año_lanzamiento)
values	(1,1,2011),
		(2,2,2012),
		(3,3,2013),
		(4,2,2014),
		(5,2,2015);	
		
alter table lugares
alter column nombre type varchar(50);

insert into lugares (id, nombre,tipo_lugar)
values	(1,'Invernalia','Ciudad'),
		(2,'Rocadragon','Fortaleza'),
		(3,'Desembarco del rey','Ciudad'),
		(4,'Bravos','Ciudad');
	
insert into episodios (id, titulo, fk_temporadas)
values 	(1,'Se acerca el invierno', 1),
		(2,'El camino real', 1),
		(3,'Lord Nieve', 1),
		(4,'Invernalia', 1),
		(5,'El lobo y el leon', 1);

alter table personajes
alter column nombre type varchar(30);	


insert into personajes (id,nombre,fk_casas,fk_lugares,fk_episodios)
values	(1,'Jon Nieve', 1, 1, 1),
		(2,'Danerys Targarean', 3, 2, 5),
		(3,'Tyrion Lanister', 2, 3, 5),
		(4,'Arya Stark', 1, 1, 5),
		(5,'Euron Greyjoy', 4, 4, 4); 



