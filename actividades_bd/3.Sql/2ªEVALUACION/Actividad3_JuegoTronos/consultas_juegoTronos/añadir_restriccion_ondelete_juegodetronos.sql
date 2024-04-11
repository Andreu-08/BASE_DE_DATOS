alter table personajes
	add constraint fk_casas_personajes_null
		foreign key (fk_casas)
		references casas(id)
		on delete set null,
		
	add constraint fk_lugares_personajes_null
		foreign key (fk_lugares)
		references lugares(id)
		on delete set null,
		
	add constraint fk_episodios_personajes_null
		foreign key (fk_episodios)
		references episodios(id)
		on delete set null;
		
alter table episodios 
	add constraint fk_temporadas_episodios_null
		foreign key (fk_temporadas)
		references temporadas(id)
		on delete set null;
	




