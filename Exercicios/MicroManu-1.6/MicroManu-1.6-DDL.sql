CREATE DATABASE MicroManu;

USE MicroManu;

CREATE TABLE Clientes (
	ID_Cliente INT PRIMARY KEY IDENTITY,
	Nome		   VARCHAR(200)
);

CREATE TABLE Itens (
	ID_Item		INT PRIMARY KEY IDENTITY,
	Descricao	VARCHAR(200)
);

CREATE TABLE Colaboradores (
	ID_Colaborador	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	Salario			DECIMAL
);

CREATE TABLE TipoConsertos (
	ID_Tipo		INT PRIMARY KEY IDENTITY,
	Descricao	VARCHAR(200)
);

CREATE TABLE Pedidos(
	ID_Pedido			INT PRIMARY KEY IDENTITY,
	NumeroEquipamento	INT,
	Entrada				DATE,
	Saida				DATE,
	Cliente				INT FOREIGN KEY REFERENCES Clientes (ID_Cliente),
	Item				INT FOREIGN KEY REFERENCES Itens (ID_Item),
	Tipo				INT FOREIGN KEY REFERENCES TipoConsertos (ID_Tipo)
);

CREATE TABLE PedidosColaboradores (
	Pedido		INT FOREIGN KEY REFERENCES Pedidos (ID_Pedido),
	Colaborador INT FOREIGN KEY REFERENCES Colaboradores (ID_Colaborador)
);