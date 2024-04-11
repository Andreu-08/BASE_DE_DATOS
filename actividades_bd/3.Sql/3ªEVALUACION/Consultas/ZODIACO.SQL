CREATE TABLE Caballeros (
id_caballero SERIAL PRIMARY KEY,
categoria_id INTEGER,
nombre VARCHAR(50) NOT NULL,
peso FLOAT,
fecha_nacimiento DATE,
armadura VARCHAR(50) 
);

CREATE TABLE Categorias (
id_categoria SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Tecnicas (
id_tecnica SERIAL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Caballero_Tecnica (
caballero_id INTEGER REFERENCES Caballeros(id_caballero),
tecnica_id INTEGER REFERENCES Tecnicas(id_tecnica),
PRIMARY KEY (caballero_id, tecnica_id)
);

INSERT INTO Categorias (nombre) VALUES
('Bronce'),
('Plata'),
('Oro');

INSERT INTO Tecnicas (nombre)
VALUES
('Meteoros de Pegaso'),
('Colera del Dragon'),
('Polvo de Diamantes'),
('Tormenta de Hielo'),
('Cadena de Andromeda'),
('Rayo de Plasma'),
('Galaxian Explosion'),
('Ondas del Infierno'),
('Flecha de Oro'),
('Gran Rayo de la Oscuridad');

INSERT INTO Caballeros (categoria_id, nombre, peso, fecha_nacimiento, armadura)
VALUES
(1, 'Seiya', 70.5, '1986-12-01', 'Pegaso'),
(1, 'Shiryu', 72.3, '1986-10-04', 'Dragon'),
(1, 'Hyoga', 68.0, '1986-01-23', 'Cisne'),
(1, 'Shun', 55.0, '1986-09-09', 'Andromeda'),
(2, 'Argol', 80.0, '1987-11-02', null),
(3, 'Aiolos', 80.0, '1960-10-30', 'Sagitario'),
(3, 'Milo', 75.0, '1974-05-09', 'Escorpio'),
(3, 'Aldebaran', 95.0, '1966-04-08', 'Tauro'),
(1, 'Ikki', 72.0, '1970-08-15', 'Fenix'),
(1, 'Geki', 90.0, '1987-05-20', null),
(2, 'Albafica', 68.0, '1988-03-05', null),
(3, 'Saga', 82.0, '1965-05-30', 'Geminis'),
(2, 'Regulus', 76.0, '1989-02-16', 'Leo'),
(1, 'Ban', 75.0, '1988-07-07', null),
(3, 'Aioria', 85.0, '1964-11-30', null);


INSERT INTO Caballero_Tecnica (caballero_id, tecnica_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 8),
(2, 2),
(2, 4),
(2, 6),
(2, 7),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(4, 3),
(4, 5),
(4, 9),
(4, 6),
(4, 7),
(4, 8),
(5, 1),
(5, 2),
(5, 4),
(5, 6),
(6, 2),
(6, 3),
(6, 4),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 3),
(8, 4),
(8, 6),
(9, 1),
(9, 2),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10,1);

