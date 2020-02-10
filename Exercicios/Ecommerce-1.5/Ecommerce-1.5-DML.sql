INSERT INTO Lojas (Nome)
VALUES  ('SenaiShop');

INSERT INTO Clientes (Nome)
VALUES  ('Fernado'),
		('Helena');

INSERT INTO Categorias (Nome, Loja)
VALUES  ('Cursos', 1),
		('Acessórios', 1);

INSERT INTO Subcategorias (Nome, Categoria)
VALUES  ('Informática Básica', 1),
		('Desenvolvimento', 1),	
		('Meio Ambiente', 2),
		('Camisetas', 2);

INSERT INTO Produtos (Nome, Valor, Subcategoria)
VALUES  ('Copo para café', 25, 3),
		('Jaqueta', 100, 4),	
		('Excel Básico', 350, 1),
		('C#', 700, 2);

INSERT INTO Pedidos (NrPedido, DataPedido, StatusP, Cliente)
VALUES  (5455514, '22/01/2019', 'Em Andamento', 1),
		(23232, '22/01/2019', 'Entregue', 2);

INSERT INTO PedidosProdutos (ID_Pedido, ID_Produto)
VALUES  (1, 1),
		(1, 2),
		(2, 3),
		(2, 4);