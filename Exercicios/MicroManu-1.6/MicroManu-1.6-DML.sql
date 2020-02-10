INSERT INTO Clientes (Nome)
VALUES  ('Carol'),
		('Saulo');

INSERT INTO Itens (Descricao)
VALUES  ('Computador'),
		('Notebook'),
		('Video Game'),
		('Televisão'),
		('Celular');

INSERT INTO Colaboradores (Nome, Salario)
VALUES  ('Henrique', 1000.0),
		('Juliano', 1000.0),
		('Fernando', 1500.0),
		('Sorocaba', 2000.0);

INSERT INTO TipoConsertos(Descricao)
VALUES  ('Manutenção'),
		('Limpeza');

INSERT INTO Pedidos (NumeroEquipamento, Entrada, Saida, Cliente, Item, Tipo)
VALUES  (123, '20/07/2019', '22/07/2019', 1, 1, 1),
		(321, '21/07/2019', null, 2, 3, 1),
		(132, '21/07/2019', null, 2, 4, 2);

INSERT INTO PedidosColaboradores (Pedido, Colaborador)
VALUES  (1, 1),
		(2, 2),
		(2, 3),
		(3, 1);