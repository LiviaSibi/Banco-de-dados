--SELECT DOS USUARIOS CADASTRADOS
SELECT ID_Usuario, NomeUsuario, Email, Senha, DataCadastro, Genero, TipoUsuario.TipoUsuario
FROM  Usuarios
INNER JOIN TipoUsuario ON Usuarios.ID_TipoUsuario =  TipoUsuario.ID_TipoUsuario;

--SELECT DAS INSTITUIÇÕES CADASTRADAS
SELECT * FROM Instituicao;

--SELECT DOS TIPOS DE EVENTO
SELECT * FROM TipoEvento;

--SELECT DOS EVENTOS
SELECT ID_Evento, NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TipoEvento
FROM  Eventos
INNER JOIN Instituicao ON Eventos.ID_Instituicao =  Instituicao.ID_Instituicao
INNER JOIN TipoEvento ON Eventos.ID_TipoEvento =  TipoEvento.ID_TipoEvento;

--SELECT DOS EVENTOS PÚBLICOS
SELECT ID_Evento, NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, TipoEvento.TipoEvento
FROM  Eventos
INNER JOIN Instituicao ON Eventos.ID_Instituicao =  Instituicao.ID_Instituicao
INNER JOIN TipoEvento ON Eventos.ID_TipoEvento =  TipoEvento.ID_TipoEvento
WHERE AcessoLivre = 1;

--SELECT DOS EVENTOS QUE UM DETERMINADO USUÁRIO PARTICIPA
SELECT ID_Presenca, Usuarios.NomeUsuario, Eventos.NomeEvento, Situacao
FROM  Presencas
INNER JOIN Usuarios ON Presencas.ID_Usuario =  Usuarios.ID_Usuario
INNER JOIN Eventos ON Presencas.ID_Evento =  Eventos.ID_Evento
WHERE Presencas.ID_Usuario = 3;