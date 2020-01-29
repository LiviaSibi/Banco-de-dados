-- comando para criar banco de dados
--DDL (definição de dados -> Estrutura)
CREATE DATABASE RoteiroLivros;

USE RoteiroLivros;

CREATE TABLE Genero (
	ID_Genero INT PRIMARY KEY IDENTITY,
	Nome	  VARCHAR(200) NOT NULL
);

CREATE TABLE Autores(
	ID_Autor   INT PRIMARY KEY IDENTITY,
	Nome_Autor VARCHAR(200)
);

CREATE TABLE Livros(
	ID_Livro INT PRIMARY KEY IDENTITY,
	Titulo	 VARCHAR(255),
	Genero	 INT FOREIGN KEY REFERENCES Genero (ID_Genero),
	Autor	 INT FOREIGN KEY REFERENCES Autores (ID_Autor)
);

--Alteração coluna nova
ALTER TABLE Autores
ADD DataNascimento DATE;

--Alteração modificar coluna
ALTER TABLE Autores
ALTER COLUMN Nome_Autor CHAR;

--Alterar coluna apagar
ALTER TABLE Autores
DROP COLUMN DataNascimento;

INSERT INTO Genero (Nome)
VALUES  ('Terror'),
		('Fantasia'),
		('Ficção cientifica'),
		('Romance'),
		('Aventura');

INSERT INTO Autores(Nome_Autor)
VALUES  ('Stephen King'),
		('Suzanne Collins'),
		('James Dashner'),
		('John Green'),
		('Rick Riordan');

INSERT INTO Livros(Titulo, Genero, Autor)
VALUES  ('It-A coisa',1,1),
		('Jogos Vorazes',2,2),
		('Maze Runner',3,3),
		('A Culpa é das Estrelas',4,4),
		('Percy Jackson e os Olimpianos',5,5);

UPDATE  Genero
SET		Nome = 'Suspense'
WHERE	ID_Genero = 2;

UPDATE  Livros
SET		Genero = 3
WHERE	ID_Livro = 2;

UPDATE  Livros
SET		Autor = 3
WHERE	ID_Livro = 2;

DELETE FROM Autores
WHERE ID_Autor = 2;

UPDATE  Livros
SET		Titulo = 'O Jogo Infinito'
WHERE	ID_Livro = 2;

--DQL (comando de consulta)
SELECT * FROM Autores;
SELECT * FROM Genero;
SELECT * FROM Livros;