--DDL - Linguagem de definição de dados
CREATE DATABASE RoteiroMusical;

USE RoteiroMusical;

CREATE TABLE EstilosMusicas (
	ID_EstiloMusical INT PRIMARY KEY IDENTITY,
	Nome			 VARCHAR(200)
);

CREATE TABLE Artistas (
	ID_Artista	   INT PRIMARY KEY IDENTITY,
	Artista		   VARCHAR(200),
	Estilo_Musical INT FOREIGN KEY REFERENCES EstilosMusicas (ID_EstiloMusical)
);

--Alterar/Adicionar novo atributo
ALTER TABLE EstilosMusicas
ADD Descricao VARCHAR(200);

--DML - Linguagem de manipulação de dados
INSERT INTO EstilosMusicas (Nome, Descricao)
VALUES ('Samba','Estilo Musical'),
	   ('Jazz','Estilo top'),
	   ('POP','Estilo popular');

INSERT INTO Artistas (Artista, Estilo_Musical)
VALUES ('Zeca Pagodinho',2),
	   ('Frank',3);

--UPDATE - ALterar dados
UPDATE  Artistas
SET		Artista = 'Alcione'
WHERE	ID_Artista = 3;

UPDATE Artistas
SET Estilo_Musical = 1
WHERE ID_Artista = 1;

--Delete - Apagar um dado
DELETE FROM EstilosMusicas
WHERE ID_EstiloMusical = 4;

--Apaga todos os dados da tabela
TRUNCATE TABLE Artistas;

SELECT * FROM EstilosMusicas;
SELECT * FROM Artistas;