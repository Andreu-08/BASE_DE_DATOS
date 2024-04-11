alter table casas
add constraint nombre_sin_espacios
check (nombre !~ '^\s|\s$');
	




