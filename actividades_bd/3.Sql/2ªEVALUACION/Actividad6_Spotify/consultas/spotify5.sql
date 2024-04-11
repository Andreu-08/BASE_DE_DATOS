
CREATE TABLE Artista (
    Id_Artista INT PRIMARY KEY,
    Nombre VARCHAR(50) 
);
 

CREATE TABLE Album (
    Id_Album INT PRIMARY KEY,
    Id_Artista INT ,
    Titulo VARCHAR(50) ,
    Anio INT ,
    FOREIGN KEY (Id_Artista) REFERENCES Artista(Id_Artista) 
);
 

CREATE TABLE Cancion (
    Id_Cancion INT PRIMARY KEY,
    Id_Album INT ,
    Titulo VARCHAR(50) ,
    Duracion INT ,
    FOREIGN KEY (Id_Album) REFERENCES Album(Id_Album) 
);
 

CREATE TABLE Usuario (
    Id_Usuario INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Email VARCHAR(100) 
);
 

CREATE TABLE ListaReproduccion (
    Id_Lista INT PRIMARY KEY,
    Id_Usuario INT ,
    Titulo VARCHAR(50) ,
    FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id_Usuario) 
);
 
CREATE TABLE ListaReproduccionCancion (
Id_Lista INT,
Id_Cancion INT,
PRIMARY KEY (Id_Lista, Id_Cancion),
FOREIGN KEY (Id_Lista) REFERENCES ListaReproduccion(Id_Lista),
FOREIGN KEY (Id_Cancion) REFERENCES Cancion(Id_Cancion)
);




ALTER TABLE Cancion ADD CONSTRAINT CK_Duracion CHECK (Duracion >= 0);
 

-- Insertar datos de prueba en la tabla Usuario
INSERT INTO Usuario (Id_Usuario, Nombre, Email)
VALUES
    (1, 'Juan', 'juan@gmail.com'),
    (2, 'María', 'maria@yahoo.com'),
    (3, 'Pedro', 'pedro@hotmail.com'),
    (4, 'Misterio', NULL),
    (5, 'Joan', 'joan@gmail.com'),
    (6, 'Mar', 'mar@yahoo.com');

 
-- Insertar datos de prueba en la tabla ListaReproduccion
INSERT INTO ListaReproduccion (Id_Lista, Id_Usuario, Titulo)
VALUES
    (1, 1, 'Mis dies'),
    (2, 2, 'Gym'),
    (3, 3, 'Estudio estudio'),
    (4, 4, 'Manolo Garcia & amigos'),
     (5, 5, 'Música para hacer deporte'),
     (6, 6, 'Relax'),
     (7, 1, 'Baladas Bisbal');


    INSERT INTO Artista (Id_Artista, Nombre)
VALUES
    (1, 'Pablo Alborán'),
    (2, 'Rosalía'),
    (3, 'Manolo García'),
    (4, 'Amaral'),
    (5, 'Antonio Orozco'),
    (6, NULL),
    (7, 'Miguel Bose'),
    (8, 'Rozalén'),
    (9, 'Vanesa Martín'),
    (10, 'David Bisbal');



INSERT INTO Album (Id_Album, Id_Artista, Titulo, Anio)
VALUES
    (1, 1, 'Pablo Alborán', 2011),
    (2, 1, 'En Acústico', 2011),
    (3, 2, 'El Mal Querer', 2018),
    (4, 2, 'Los Ángeles', 2017),
    (5, 3, 'Geometría del Rayo', 2018),
    (6, 3, 'Los Días Intactos', 2011),
    (7, 4, 'Hacia lo Salvaje', 2011),
    (8, 4, 'Pájaros en la Cabeza', 2005),
    (9, 5, 'Diez', 2008),
    (10, 5, 'Renovatio', 2011),
    (11, 6, 'Sin album 2.0', 2011),
    (12, 6, 'Sin Álbum', NULL),
    (13, 6, 'Cuando el río suena...', 2017),
    (14, 6, 'Con derecho a...', 2020),
    (15, 8, 'Munay', 2016),
    (16, 9, 'Todas las mujeres que habitan en mí', 2018),
    (17, 10, 'Corazón latino', 2002),
    (18, 10, 'Bulería', 2004),
    (19, 10, 'En tus planes', 2020);



INSERT INTO Cancion (Id_Cancion, Id_Album, Titulo, Duracion)
VALUES
    (1, 1, 'Solamente Tú', 220),
    (2, 1, 'Miedo', 227),
    (3, 2, 'Te He Echado De Menos', 258),
    (4, 2, 'Perdóname', 250),
    (5, 3, 'Malamente', 182),
    (6, 3, 'Pienso En Tu Mirá', 240),
    (7, 4, 'Catalina', 256),
    (8, 4, 'De Plata', 258),
    (9, 5, 'Devuélveme La Vida', 244),
    (10, 5, 'Dime Por Qué', 229),
    (11, 6, 'Sombra de la Sombra de Tu Sombrero', 266),
    (12, 6, 'Un Giro Teatral', 301),
    (13, 7, 'Hacia lo Salvaje', 307),
    (14, 7, 'Esperando un Resplandor', 245),
    (15, 8, 'El Universo Sobre Mí', 273),
    (16, 9 , 'Esperando un Resplandor', 245),
    (17, 10 , 'Corazón latino', 200),
    (18, 11, 'Bulería', 180),
    (19, 11, NULL, 240),
    (20, 11, NULL, 190);


INSERT INTO ListaReproduccionCancion (Id_Lista, Id_Cancion)
VALUES (1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(3, 6),
	(3, 8),
	(4, 7),
	(4, 10),
	(5, 11),
	(5, 12),
	(6, 13),
	(6, 14),
	(7, 17),
	(7, 18);
