CREATE TABLE IF NOT EXISTS polideportivos
(
	id SERIAL PRIMARY KEY ,
	nombre VARCHAR(50) UNIQUE NOT NULL,
	direccion VARCHAR(50) NOT NULL,
	extension INT DEFAULT 0
);
CREATE TABLE IF NOT EXISTS pistas
(
	id SERIAL PRIMARY KEY,
	codigo VARCHAR(10) NOT NULL,
	tipo VARCHAR(20),
	operativa BOOLEAN DEFAULT TRUE,
	precio FLOAT DEFAULT 0,
	fecha_ultima_reserva DATE,
	id_polideportivo INT  NOT NULL 
);
CREATE TABLE IF NOT EXISTS reservas
(
	id SERIAL PRIMARY KEY ,
	fecha_reserva DATE DEFAULT CURRENT_TIMESTAMP,
	fecha_uso DATE NOT NULL,
	precio FLOAT DEFAULT 0,
	id_pista INT NOT NULL
);
CREATE TABLE IF NOT EXISTS usuarios
(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	telefono VARCHAR(12),
	dni VARCHAR(10) UNIQUE NOT NULL,
	fecha_nacimiento DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS usuario_reserva
(
	id_usuario INT  REFERENCES usuarios,
	id_reserva INT  REFERENCES reservas,
	PRIMARY KEY (id_usuario, id_reserva)
);
