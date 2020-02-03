INSERT INTO Empresa (Nome)
VALUES  ('Unidas'),
		('Localiza');

INSERT INTO Clientes (Nome, CPF)
VALUES  ('Fernando', 23324442444),
		('Helena', 32434554333);

INSERT INTO Marcas (Nome)
VALUES  ('Ford'),
		('GM'),
		('Fiat');

INSERT INTO Modelos (Nome, Marca)
VALUES	('Fiesta', 1),
		('Onix', 2),
		('Argo', 3);
		 
INSERT INTO Veiculos (Placa, Empresa, Modelo)
VALUES	('HEL1805', 1, 1),
		('FER1010', 1, 2),
		('POR1978', 2, 3),
		('LEM9876', 2, 1);

INSERT INTO Alugueis (DataInicio, DataFim, Cliente, Veiculo)
VALUES	('19/01/2019', '20/01/2019', 1, 1),
		('20/01/2019', '21/01/2019', 1, 2),
		('21/01/2019', '21/01/2019', 2, 3),
		('22/01/2019', '21/01/2019', 2, 2);