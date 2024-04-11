alter table casas
add constraint lema_solo_letras_espacios
check (nombre ~ '[a-zA-Z|\s]+$');
	




