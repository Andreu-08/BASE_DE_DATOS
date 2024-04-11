
CREATE TABLE genero (
  id_genero SERIAL PRIMARY KEY,
  nombre VARCHAR(50),
  descripcion TEXT
);
CREATE TABLE juego (
  id_juego SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  genero_id INT REFERENCES genero(id_genero),
  fecha_lanzamiento DATE,
  calificacion FLOAT
);
CREATE TABLE plataforma (
  id_plataforma SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  fabricante VARCHAR(100)
);



CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  correo_electronico VARCHAR(100) UNIQUE,
  nombre_usuario VARCHAR(50) UNIQUE,
  contrasena VARCHAR(255)
);

CREATE TABLE comentario (
  id_comentario SERIAL PRIMARY KEY,
  contenido TEXT,
  fecha DATE,
  usuario_id INT REFERENCES usuario(id_usuario),
  juego_id INT REFERENCES juego(id_juego)
);

CREATE TABLE juego_plataforma (
  id_juego_plataforma SERIAL PRIMARY KEY,
  juego_id INT REFERENCES juego(id_juego),
  plataforma_id INT REFERENCES plataforma(id_plataforma)
);




INSERT INTO genero (nombre, descripcion)
VALUES 
  ('Acción', 'acción'),
  ('Aventura', 'explorar'),
  ('Deportes', 'deportes '),
  ('Estrategia', 'planificación'),
  ('RPG', 'Juegos de rol');


INSERT INTO plataforma (nombre, fabricante)
VALUES 
  ('PlayStation 5', 'Sony'),
  ('Xbox Series X', 'Microsoft'),
  ('Nintendo Switch', 'Nintendo'),
  ('Nintendo 3DS', 'Nintendo'),
  ('PC', NULL),
  ('Mobile', NULL),
  ('Xbox One', 'Microsoft'),
  ('Android', NULL);



INSERT INTO juego (nombre, genero_id, fecha_lanzamiento, calificacion)
VALUES 
  ('The Last of Us Part II', 1, '2020-06-19', 9.3),
  ('Super Mario Odyssey', 2, '2017-10-27', 9.5),
  ('FIFA 23', 3, '2022-10-06', 7.3),
  ('Civilization VI', 4, '2016-10-21', 8.4),
  ('The Elder Scrolls V', 5, '2011-11-11', 9.5),
  ('The Legend of Zelda', 1, '2017-03-03', 9.5),
  ('Call of Duty: 99', 5, '2019-10-25', 8.8),
  ('Forza Horizon 8', 1, '2018-10-02', 9.7),
  ('Tetris', 2, '1984-06-06', 9.0),
  ('The Sims ', 3, '2014-09-02', 8.5),
  ('Street Fighter V', 4, '2016-02-16', 8.2),
  ('Assassin''s Creed ', 5, '2020-11-10', 8.7),
  ('Minecraft', 3, '2011-11-18', 9.2),
  ('God of War', 1, '2018-04-20', 9.7);




INSERT INTO usuario (nombre, correo_electronico, nombre_usuario, contrasena)
VALUES 
  ('Juan ', 'juan.profe.informatica@gmail.com', 'juan', 'password123'),
  ('Gerard', 'gerard@yahoo.com', 'gerard', 'password456'),
  ('Andrei', 'andreiz@gmail.com', 'andrei', 'password789'),
  ('Joan', 'joan@gmail.com', 'joan', 'passwordabc'),
  ('Mar', 'mar@gmail.com', 'mar', 'passworddef');


INSERT INTO comentario (contenido, fecha, usuario_id, juego_id)
VALUES 
  ('Este juego es increíble.', '2021-03-01', 1, 1),
  ('Este juego es brutal.', '2021-04-06', 1, 11),
  ('Este juego  mola.', '2021-05-06', 1, 2),
  ('Este juego  mola+.', '2022-05-06', 1, 3),
  ('Este juego  mola++.', '2021-05-06', 1, 4),
  ('Un Clásico', '2021-05-06', 1, 5),
  ('Me encanta la música de este juego.', '2021-02-14', 2, 2),
  ('El modo carrera es muy arcade.', '2020-12-25', 3, 3),
  ('Te doy mis dies .', '2021-03-20', 4, 4),
  ('Es mi juego favorito .', '2021-04-15', 5, 5),
  ('Dos players es muy adictivo.', '2022-01-10', 2, 6),
  ('Me encantan los coches ', '2022-02-14', 1, 7),
  ('Clásico Tetris.', '2022-03-05', 3, 8),
  ('Muy divertido.', '2022-04-20', 5, 9),
  ('Los combates son emocionantes.', '2022-05-15', 1, 10);


INSERT INTO juego_plataforma (juego_id, plataforma_id)
VALUES 
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 1),
  (3, 2),
  (3, 3),
  (3, 4),
  (3, 5),
  (3, 6),
  (3, 7),
  (3, 8),
  (4, 4),
  (5, 1),
  (5, 4),
  (5, 7),
  (6, 1),
  (7, 2),
  (8, 3),
  (9, 4),
  (9, 1),
  (9, 2),
  (9, 3),
  (9, 5),
  (9, 6),
  (9, 7),
  (9, 8),
  (10, 1),
  (10, 5),
  (11, 1),
  (11, 2),
  (11, 3),
  (11, 4),
  (11, 6),
  (11, 7),
  (11, 8),
  (12, 1),
  (12, 2),
  (12, 3),
  (12, 4),
  (13, 4),
  (13, 5),
  (13, 6),
  (14, 1),
  (14, 2),
  (14, 3),
  (14, 4),
  (14, 5),
  (14, 6);



