CREATE DATABASE `propavilion` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE propavilion.usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    contraseña VARCHAR(255),
    tipoUsuario INT
);

CREATE TABLE propavilion.pabellones (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre	TEXT NOT NULL,
	num_pista	INTEGER NOT NULL,
	cubierta	INTEGER NOT NULL,
	maxPersonas	INTEGER NOT NULL
);

CREATE TABLE propavilion.reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INTEGER,
    idPabellon INTEGER,
    dia DATE NOT NULL,
    maxPersonas INTEGER NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(id),
	FOREIGN KEY (idPabellon) REFERENCES Pabellones(id)
);
SELECT R.id, R.diaHora, R.maxPersonas, U.nombre AS nombre_usuario, P.nombre AS nombre_pabellon FROM propavilion.reservas R 
INNER JOIN propavilion.usuarios U ON R.idusuario = U.id 
INNER JOIN propavilion.pabellones P ON R.idpabellon = P.id;

SELECT * FROM propavilion.pabellones;
SELECT * FROM propavilion.usuarios;
SELECT * FROM propavilion.reservas;




INSERT INTO propavilion.usuarios ( nombre, contraseña, tipoUsuario)
VALUES ( 'Sandra', '1234', '0');

INSERT INTO propavilion.usuarios ( nombre, contraseña, tipoUsuario)
VALUES ( 'Maria', '1234', '1');

INSERT INTO propavilion.usuarios ( nombre, contraseña, tipoUsuario)
VALUES ( 'Carlos', '1234', '1');

INSERT INTO propavilion.usuarios ( nombre, contraseña, tipoUsuario)
VALUES ( 'Juan', '1234', '1');

INSERT INTO propavilion.pabellones (nombre,num_pista,cubierta,maxPersonas)
VALUES ('Pabellon VillaMarin', 3, 1, 130);
    
INSERT INTO propavilion.pabellones (nombre,num_pista,cubierta,maxPersonas)
VALUES ('Pabellon Os Campons', 5, 1, 300);
    
INSERT INTO propavilion.pabellones(nombre,num_pista,cubierta,maxPersonas)
VALUES ('Pabellon Sofía Toro ', 2, 1, 250);

INSERT INTO propavilion.pabellones (nombre,num_pista,cubierta,maxPersonas)
VALUES ('Pabellon do Ensanche', 1, 0, 100);

INSERT INTO propavilion.pabellones (nombre,num_pista,cubierta,maxPersonas)
VALUES ('Pabellon Mercaderias', 1, 0, 360);

INSERT INTO propavilion.reservas (idUsuario, idPabellon, dia, maxPersonas) 
VALUES (2, 1, '2024-04-12', 100);

INSERT INTO propavilion.reservas (idUsuario, idPabellon, dia, maxPersonas) 
VALUES (4, 2, '2024-03-10', 150);

INSERT INTO propavilion.reservas (idUsuario, idPabellon, dia, maxPersonas) 
VALUES (4, 3, '2024-03-11', 40);

SELECT MAX(id) AS ultimo_id FROM propavilion.pabellones;

SELECT nombre FROM propavilion.pabellones

SELECT R.id, R.diaHora, R.maxPersonas, U.nombre AS nombre_usuario, P.nombre AS nombre_pabellon 
FROM propavilion.reservas R 
INNER JOIN propavilion.usuarios U ON R.idusuario = U.id
INNER JOIN propavilion.pabellones P ON R.idpabellon = P.id

DELETE FROM propavilion.reservas WHERE id = 4
DELETE FROM propavilion.pabellones WHERE id = 6;


