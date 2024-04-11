
create table casas(
	id int primary key,
	nombre varchar(15),
	region varchar (15),
	lema varchar (50)
	
);

create table lugares(
	id int primary key,
	nombre varchar (15),
	tipo_lugar varchar (10)
	check (tipo_lugar = 'Ciudad' or tipo_lugar = 'Fortaleza') not null
);



create table temporadas(
	id int primary key,
	numero_temporada numeric (1),
	año_lanzamiento numeric (4)
);
create table episodios(
	id int primary key,
	titulo varchar(30),
	fk_temporadas int,
	constraint fk_temporadas_episodios foreign key (fk_temporadas) references temporadas(id)
);
create table personajes(
	id int primary key,
	nombre varchar (15),
	fk_casas int,
	fk_lugares int,
	fk_episodios int,
	constraint fk_casas_personajes foreign key (fk_casas) references casas(id),
	constraint fk_lugares_personajes foreign key (fk_lugares) references lugares(id),
	constraint fk_episodios_personajes foreign key (fk_episodios) references episodios(id)
);


