CREATE TABLE Usuarios (
    Id_Usuario SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Videos (
    id_video SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    url TEXT NOT NULL,
    user_id INTEGER REFERENCES Usuarios(Id_Usuario)
    FOREIGN KEY (user_id) REFERENCES Usuarios(Id_Usuario)
);

CREATE TABLE Comentarios (
   --  id_comentario 
   -- comentario 
   -- video_id 
   -- user_id 
   --Añade Fk
);

INSERT INTO Usuarios (username, email, password) 
VALUES ('juan', 'juan@gmail.com', '12345678'),
       ('andrei', 'andrei@gmail.com', 'Andrei666'),
       ('carles', 'carles@@mixmail.com', 'Arcoiris12'),
       ('gerard', 'gerard4@gmail.com', 'Pepapin'),
       ('jordi', 'jordi@gmail.com.com', 'jordivall55');

       INSERT INTO Videos (titulo, descripcion, url, user_id) 
VALUES ('"Salir Corriendo', 'Descripción del video 1', 'https://www.youtube.com/watch?v=9DnMn5r5r5Q', 1),
       ('LOS SECRETOS - Pero A Tu Lado (acustico) video', 'Descripción del video 2', 'https://www.youtube.com/watch?v=rYNW1IxaFf4', 1),
       ('Mix: Double Dare - We Belong', 'Descripción del video 3', 'https://www.youtube.com/watch?v=YOs-bNZ14Mg&list=RDYOs-bNZ14Mg&start_radio=1', 2),
       ('CANTADITAS DE SIEMPRE by DJ Kachu', 'Descripción del video 4', 'https://www.youtube.com/watch?v=-7R1bm6Bj0c', 3),
       ('JERUSALEMA CHALLENGE IES ALMENARA', 'Descripción del video 5', 'https://www.youtube.com/watch?v=4FjHkhHsnfA', 4);


INSERT INTO Comentarios (comentario, video_id, user_id) 
VALUES ('precioso',5, 1),
       ('bello', 2, 2),
       ('elegante', 4, 1),
       ('encantador', 3, 3),
       ('gracioso', 3, 1),
       ('precioso', 1, 2),
       ('bello', 2, 4),
       ('elegante', 2, 3),
       ('encantador', 3, 3),
       ('precioso', 1, 2),
       ('bello', 2, 2),
       ('elegante', 2, 1),
       ('encantador', 3, 5),
       ('gracioso', 4, 1),
       ('precioso', 1, 2),
       ('bello', 2, 5),
       ('elegante', 2, 3),
       ('encantador', 3, 5);



