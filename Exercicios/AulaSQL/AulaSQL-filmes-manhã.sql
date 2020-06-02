CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Genero(
	IDGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE Filme(
	IDFilme		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR (255) UNIQUE NOT NULL,
	IDGenero	INT FOREIGN KEY REFERENCES Genero (IDGenero)
);

CREATE TABLE Usuarios(
	IdUsuario	INT PRIMARY KEY IDENTITY,
	Email		VARCHAR (255) NOT NULL UNIQUE,
	Senha		VARCHAR (255) NOT NULL,
	Permissao	VARCHAR (255) NOT NULL
);

INSERT INTO Genero (Nome)
VALUES ('Drama'), ('Ação');

INSERT INTO Filme (Titulo, IDGenero)
VALUES ('A vida é bela', 1), ('Rambo', 2);

INSERT INTO Usuarios (Email, Senha, Permissao)
VALUES ('saulo@email.com', '123', 'Comum'), ('adm@adm.com', '123', 'Administrador');

SELECT * FROM Filme;

SELECT * FROM Genero;

SELECT * FROM Usuarios;

SELECT Titulo, Genero.Nome as Genero FROM Filme
INNER JOIN Genero ON Filme.IDGenero = Genero.IDGenero

SELECT IDFilme, Titulo, Filme.IDGenero, Genero.Nome FROM Filme INNER JOIN Genero ON Filme.IDGenero = Genero.IDGenero WHERE Filme.Titulo = 'Rambo'

drop table Filme;
drop table Genero;