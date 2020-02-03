CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Lojas (
	ID_Loja	INT PRIMARY KEY IDENTITY,
	Nome	VARCHAR(200)
);

CREATE TABLE Clientes (
	ID_Cliente	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200)
);

CREATE TABLE Categorias (
	ID_Categoria	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	Loja			INT FOREIGN KEY REFERENCES Lojas (ID_Loja)
);

CREATE TABLE Subcategorias (
	ID_SubCategoria	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	Categoria		INT FOREIGN KEY REFERENCES Categorias (ID_Categoria)
);

CREATE TABLE Produtos (
	ID_Produto		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	Valor			INT,
	Subcategoria	INT FOREIGN KEY REFERENCES Subcategorias (ID_Subcategoria)
);

CREATE TABLE Pedidos (
	ID_Pedido		INT PRIMARY KEY IDENTITY,
	NrPedido		INT,
	DataPedido		DATE,
	StatusP			VARCHAR(200),
	Cliente			INT FOREIGN KEY REFERENCES Clientes (ID_Cliente)
);

CREATE TABLE PedidosProdutos (
	ID_Pedido		INT FOREIGN KEY REFERENCES Pedidos (ID_Pedido),
	ID_Produto		INT FOREIGN KEY REFERENCES Produtos (ID_Produto)
);