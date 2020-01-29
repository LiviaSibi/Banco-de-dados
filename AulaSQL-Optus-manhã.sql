CREATE DATABASE EmpresaOPTUS;

USE EmpresaOPTUS;

CREATE TABLE TiposUsuario (
	ID_TipoUsuario INT PRIMARY KEY IDENTITY,
	Tipo		   VARCHAR(200)
);

CREATE TABLE Artistas (
	ID_Artista INT PRIMARY KEY IDENTITY,
	Nome	   VARCHAR(200)
);

CREATE TABLE Estilos (
	ID_Estilo INT PRIMARY KEY IDENTITY,
	Estilo	  VARCHAR(200)
);

CREATE TABLE Usuarios (
	ID_Usuario  INT PRIMARY KEY IDENTITY,
	Nome	    VARCHAR(200),
	TipoUsuario INT FOREIGN KEY REFERENCES TiposUsuario (ID_TipoUsuario)
);

CREATE TABLE Albuns (
	ID_Album		INT PRIMARY KEY IDENTITY,
	Album			VARCHAR(200),
	DataLancamento	DATE,
	QtdMinutos		INT,
	Vizualizacao	BIGINT,
	Artista			INT FOREIGN KEY REFERENCES Artistas (ID_Artista),
	Estilo			INT FOREIGN KEY REFERENCES EStilos (ID_Estilo)
);

SELECT * FROM TiposUsuario;
SELECT * FROM Artistas;
SELECT * FROM Estilos;
SELECT * FROM Usuarios;
SELECT * FROM Albuns;

INSERT INTO TiposUsuario (Tipo)
VALUES ('Adm'),
	   ('Comum');

INSERT INTO Artistas (Nome)
VALUES ('Twenty One Pilots'),
	   ('Bring me the Horizon'),
	   ('John Mayer'),
	   ('The Kooks'),
	   ('Coldplay');

INSERT INTO Estilos (Estilo)
VALUES ('Rock Alternativo'),
	   ('Rock'),
	   ('Blues'),
	   ('Rock Indie'),
	   ('Pop Rock');

INSERT INTO Usuarios (Nome, TipoUsuario)
VALUES  ('Livia',1),
		('Gabi',2),
		('Matheus',2),
		('Luan',2),
		('Pablo',2);

INSERT INTO Albuns (Album, DataLancamento, QtdMinutos, Vizualizacao, Artista, Estilo)
VALUES  ('Blurryface', '17/05/2015', 53, 200, 1, 1),
		('Amo', '25/01/2019', 52, 200, 2, 2),
		('Continuum', '12/09/2006', 50, 200, 3, 3),
		('Inside In/ Inside Out', '23/01/2003', 50, 200, 4, 4),
		('Live 2012', '12/06/2012', 53, 200, 5, 5);
