SELECT Titulo as Especializacao FROM Especializacao;

SELECT CRM, Nome, Usuarios.Email, Especializacao.Titulo as Especialidade, Clinica.NomeFantasia, Clinica.CNPJ, Clinica.RazaoSocial, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Medicos
INNER JOIN Usuarios ON Medicos.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco;

SELECT Nome, Email, DataNacimento, Telefone, RG, CPF, Enderecos.Rua, Enderecos.Numero, Enderecos.Cidade, Enderecos.Estado, Enderecos.CEP
FROM Prontuarios
INNER JOIN Usuarios ON Prontuarios.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Enderecos ON Prontuarios.ID_Endereco = Enderecos.ID_Endereco;

SELECT Prontuarios.Nome as Prontuario, Medicos.Nome as Medico, DataConsulta, Situacao.Titulo as Situacao
FROM Consulta
INNER JOIN Prontuarios ON Consulta.ID_Prontuario = Prontuarios.ID_Prontuario
INNER JOIN Medicos ON Consulta.ID_Medico = Medicos.ID_Medico
INNER JOIN Situacao ON Consulta.ID_Situacao = Situacao.ID_Situacao;