--Select medicos
SELECT CRM, Nome, Usuarios.Email, Especializacao.Titulo as Especialidade, Clinica.NomeFantasia, Clinica.CNPJ, Clinica.RazaoSocial, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Medicos
INNER JOIN Usuarios ON Medicos.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco;

--Select usuarios
SELECT Email, Senha, TipoUsuario.Titulo as TipoUsuario
FROM Usuarios
INNER JOIN TipoUsuario ON Usuarios.ID_TipoUsuario = TipoUsuario.ID_TipoUsuario;

--quantidade de usuários (requisito vermelho)
SELECT COUNT (ID_Usuario) FROM Usuarios;

--Select consulta (requisito vermelho)
SELECT Prontuarios.Nome as Prontuario, Prontuarios.RG, Medicos.Nome as Medico, Especializacao.Titulo as Especializacao, Clinica.NomeFantasia, Clinica.RazaoSocial,
DataConsulta, Descricao, Situacao.Titulo as Situacao, Enderecos.Rua, Enderecos.Numero, Enderecos.CEP
FROM Consulta
INNER JOIN Prontuarios ON Consulta.ID_Prontuario = Prontuarios.ID_Prontuario
INNER JOIN Medicos ON Consulta.ID_Medico = Medicos.ID_Medico
INNER JOIN Especializacao ON Medicos.ID_Especializacao = Especializacao.ID_Especializacao
INNER JOIN Clinica ON Medicos.ID_Clinica = Clinica.ID_Clinica
INNER JOIN Enderecos ON Clinica.ID_Endereco = Enderecos.ID_Endereco
INNER JOIN Situacao ON Consulta.ID_Situacao = Situacao.ID_Situacao;

-- Select da quantidade de médicos de uma determinada especialidade (requisito vermelho)
SELECT COUNT (ID_Medico)  AS MedicosPorEspecializacao FROM Medicos WHERE ID_Especializacao = 2;

--Calculo da idade do usuário pela data de nascimento (requisito azul)
DECLARE @dataNascimento Date = '1983-10-13';
DECLARE @dataReferencia Date = '2020-12-31'

select 
(
    CASE 
        WHEN 
        MONTH(@dataReferencia) > MONTH(@dataNascimento)
        OR
        (
            MONTH(@dataReferencia) = MONTH(@dataNascimento) 
            AND DAY(@dataReferencia) >= DAY(@dataNascimento) 
        )
    THEN DATEDIFF(YEAR, @dataNascimento, @dataReferencia) 
    ELSE DATEDIFF(YEAR, @dataNascimento, @dataReferencia) -1 END
) AS IDADE;

--Stored Procedure do prontuario retornando a idade do usuario e covertendo a data de nascimento para MM/DD/YYYY (requisito vermelho)
CREATE PROC SPMedGroupSelectProntuario
AS
	BEGIN
		SELECT Nome, Email, CONVERT(VARCHAR(10), DataNacimento, 101) AS DataNacimento,
		YEAR(GETDATE())-YEAR(DataNacimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNacimento)*32+DAY(DataNacimento),1,0) AS Idade,
		Telefone, RG, CPF, Enderecos.Rua, Enderecos.Numero, Enderecos.Cidade, Enderecos.Estado, Enderecos.CEP
		FROM Prontuarios
		INNER JOIN Usuarios ON Prontuarios.ID_Usuario = Usuarios.ID_Usuario
		INNER JOIN Enderecos ON Prontuarios.ID_Endereco = Enderecos.ID_Endereco;
	END
GO

EXEC SPMedGroupSelectProntuario;