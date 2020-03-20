INSERT INTO Especializacao (Titulo)
VALUES  ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediatrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO TipoUsuario (Titulo)
VALUES	('Admnistrador'),
		('Médico'),
		('Paciente');

INSERT INTO Enderecos (Rua, Numero, Cidade, Estado, CEP)
VALUES	('Av. Barão de Limeira', 532, 'São Paulo', 'SP', 01023000),
		('Rua Estado de Israel', 240, 'São Paulo', 'SP', 04022000),
		('Av. Paulista', 1578, 'Bela Vista', 'SP', 01310200),
		('Av. Ibirapuera', 2877, 'São Paulo', 'SP', 04029200),
		('Rua Vitória', 120, 'Barueri', 'SP', 06402030),
		('R. Ver. Geraldo de Camargo', 66, 'Ribeirão Pires', 'SP', 09405380),
		('Alameda dos Arapanés', 945, 'Indianópolis', 'SP', 04524001),
		('Rua São Antônio', 232, 'Barueri', 'SP', 06407140);

INSERT INTO Situacao (Titulo)
VALUES	('Realizada'),
		('Cancelada'),
		('Agendada');

INSERT INTO Clinica (NomeFantasia, RazaoSocial, HorarioFuncionamento, CNPJ, ID_Endereco)
VALUES ('Clinica Possarle', 'SP Medical Group', '24h', 86400902000130, 1);

INSERT INTO Usuarios (Email, Senha, ID_TipoUsuario)
VALUES	('ricardo.lemos@spmedicalgroup.com.br', 'abc123', 2),
		('roberto.possarle@spmedicalgroup.com.br', 'abc123', 2),
		('helena.souza@spmedicalgroup.com.br', 'abc123', 2),
		('ligia@gmail.com', 'abc123', 3),
		('alexandre@gmail.com', 'abc123', 3),
		('fernando@gmail.com', 'abc123', 3),
		('henrique@gmail.com', 'abc123', 3),
		('joao@hotmail.com', 'abc123', 3),
		('bruno@gmail.com', 'abc123', 3),
		('mariana@outlook', 'abc123', 3),
		('fernandostrada@gmail.com', 'abc123', 1);

INSERT INTO Prontuarios (Nome, RG, CPF, DataNacimento, Telefone, ID_Usuario, ID_Endereco)
VALUES	('Ligia', 435225435, 94839859000, '13/10/1983', '(11)3456-7654', 4, 2),
		('Alexandre', 326543457, 73556944057, '23/07/2001', '(11)98765-6543', 5, 3),
		('Fernando', 546365253, 16839338002, '10/10/1978', '(11)97208-4453', 6, 4),
		('Henrique', 543663625, 14332654765, '13/10/1985', '(11)3456-6543', 7, 5),
		('Jõao', 325444441, 91305348010, '27/08/1975','(11)7656-6377', 8, 6 ),
		('Bruno', 545662667, 79799299004, '21/03/1972', '(11)95436-8769', 9, 7),
		('Mariana', 545662668, 13771913039, '05/03/2018', '(11)2345-6789', 10, 8);

INSERT INTO Medicos (Nome, CRM, ID_Clinica, ID_Especializacao, ID_Usuario)
VALUES	('Ricardo Lemos', '54356SP', 1, 2, 1),
		('Roberto Possarle', '53452SP', 1, 17, 2),
		('Helena Strada', '65463SP', 1, 16, 3);