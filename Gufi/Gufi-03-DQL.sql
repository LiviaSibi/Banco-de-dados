--SELECT DOS USUARIOS CADASTRADOS
SELECT NomeUsuario, Email, DataCadastro, Genero, TipoUsuario.TipoUsuario
FROM  Usuarios
INNER JOIN TipoUsuario ON Usuarios.ID_TipoUsuario = TipoUsuario.ID_TipoUsuario;

--SELECT DAS INSTITUIÇÕES CADASTRADAS
SELECT CNPJ, NomeFantasia, Endereco FROM Instituicao;

--SELECT DOS TIPOS DE EVENTO
SELECT TipoEvento.TipoEvento FROM TipoEvento;

--SELECT DOS EVENTOS
SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TipoEvento
FROM  Eventos
INNER JOIN Instituicao ON Eventos.ID_Instituicao = Instituicao.ID_Instituicao
INNER JOIN TipoEvento ON Eventos.ID_TipoEvento = TipoEvento.ID_TipoEvento;

--SELECT DOS EVENTOS PÚBLICOS
SELECT NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TipoEvento
FROM  Eventos
INNER JOIN Instituicao ON Eventos.ID_Instituicao = Instituicao.ID_Instituicao
INNER JOIN TipoEvento ON Eventos.ID_TipoEvento = TipoEvento.ID_TipoEvento
WHERE AcessoLivre = 1;

--SELECT DOS EVENTOS QUE UM DETERMINADO USUÁRIO PARTICIPA
SELECT Eventos.NomeEvento, TipoEvento.TipoEvento, Eventos.DataEvento, CAST(CASE WHEN AcessoLivre=1 THEN 'Publico' ELSE 'Privado' END AS VARCHAR(255)) AS AcessoLivre, Eventos.Descricao, Usuarios.NomeUsuario, Instituicao.NomeFantasia, Situacao
FROM  Presencas
INNER JOIN Usuarios ON Presencas.ID_Usuario = Usuarios.ID_Usuario
INNER JOIN Eventos ON Presencas.ID_Evento = Eventos.ID_Evento
INNER JOIN TipoEvento ON Eventos.ID_TipoEvento = TipoEvento.ID_TipoEvento
INNER JOIN Instituicao ON Eventos.ID_Instituicao = Instituicao.ID_Instituicao
WHERE Presencas.ID_Usuario = 2 AND Presencas.Situacao LIKE 'Confirmada%';