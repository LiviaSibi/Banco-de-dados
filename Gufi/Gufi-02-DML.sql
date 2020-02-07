INSERT INTO TipoUsuario (TipoUsuario)
VALUES  ('Administrador'),
		('Comum');

INSERT INTO TipoEvento (TipoEvento)
VALUES  ('C#'),
		('React'),
		('SQL');

INSERT INTO Instituicao (CNPJ, NomeFantasia, Endereco)
VALUES  (11111111111111, 'Escola SENAI de Inform�tica', 'Alameda Bar�o de Limeira, 538');

INSERT INTO Usuarios (NomeUsuario, Email, Senha, DataCadastro, Genero, ID_TipoUsuario)
VALUES  ('Administrador', 'adm@adm.com', 'adm123', '06/02/2020', 'N�o informado', 1),
		('Carol', 'carol@adm.com', 'carol123', '06/02/2020', 'Feminino', 2),
		('Saulo', 'saulo@adm.com', 'saulo123', '06/02/2020', 'Masculino', 2);

INSERT INTO Eventos (NomeEvento, DataEvento, Descricao, AcessoLivre, ID_Instituicao, ID_TipoEvento)
VALUES  ('Orienta��o a objeto', '07/02/2020', 'Conceito sobre os pilares da programa��o orientada a objetos', 1, 1, 1),
		('Ciclo da vida', '08/02/2020', 'Como utilizar os ciclos de vida com a biblioteca ReactJs', 0, 1, 2),
		('Introdu��o a SQL', '09/02/2020', 'Comandos b�sicos utilizando SQL Server', 1, 1, 3);

INSERT INTO Presencas (ID_Usuario, ID_Evento, Situacao)
VALUES  (2, 2, 'Confirmada'),
		(2, 3, 'N�o confirmada'),
		(3, 1, 'Confirmada');