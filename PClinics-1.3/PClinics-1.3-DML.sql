INSERT INTO Clinicas (RazaoSocial, Endereco)
VALUES ('Clinica Veterinária', 'Alameda Barão de Limeira, 532');

INSERT INTO Donos(Nome)
VALUES  ('Carol'),
		('Saulo');

INSERT INTO TipoPET (Titulo)
VALUES  ('Cachorro'),
		('Gato');

INSERT INTO Racas (Titulo, TipoPET)
VALUES  ('Siamês', 2),
		('Persa', 2);

INSERT INTO Veterinarios(Nome, CRMV, Clinica)
VALUES  ('Pablo', 123, 1);

INSERT INTO PETs (Nome, Telefone, Dono, Raca)
VALUES  ('Lua', 9999-9999, 1, 2),
		('Jefferson', 9999-9999, 2, 2);

INSERT INTO Atendimentos (DataConsulta, Descricao, Veterinario, PET)
VALUES	('27/01/2020', 'Tudo em ordem', 1, 2),
		('28/01/2020', 'Doença grave detectada', 1, 2);