CREATE DATABASE versami
GO
USE versami
GO
CREATE TABLE tblPerguntaSecreta(
idPergunta INT NOT NULL PRIMARY KEY IDENTITY,
pergunta VARCHAR(255)
)
GO
CREATE TABLE tblUsuario(
idUsuario INT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50),
data_nasc DATE,
email VARCHAR(80),
senha VARCHAR(250),
arroba_usuario VARCHAR(30) UNIQUE,
fotoUsuario VARBINARY(MAX),
fotoCapa VARBINARY(MAX),
bio_usuario VARCHAR(255) NULL,
resposta VARCHAR(255),
idPergunta INT NULL FOREIGN KEY REFERENCES tblPerguntaSecreta(idPergunta)
)
GO
CREATE TABLE tblPermissao(
idPermissao INT NOT NULL PRIMARY KEY IDENTITY,
descricao VARCHAR(50) NOT NULL UNIQUE
)
GO
CREATE TABLE tblAdmin(
idAdmin INT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(80),
data_nasc DATE,
email VARCHAR(80),
senha VARCHAR(250),
arroba_usuario VARCHAR(30) UNIQUE,
permissao INT FOREIGN KEY REFERENCES tblPermissao(idPermissao) ON DELETE CASCADE,
pergunta INT FOREIGN KEY REFERENCES tblPerguntaSecreta(idPergunta),
resposta VARCHAR(255)
)
GO
CREATE TABLE tblAutor(
idAutor INT NOT NULL PRIMARY KEY IDENTITY,
nomeAutor VARCHAR(80),
descAutor VARCHAR(250)
)
GO
CREATE TABLE tblGenero(
idGenero INT NOT NULL PRIMARY KEY IDENTITY,
nomeGenero VARCHAR(80),
descGenero VARCHAR(250)
)
GO
CREATE TABLE tblLivro(
idLivro INT NOT NULL PRIMARY KEY IDENTITY,
nomeLivro VARCHAR(80),
descLivro VARCHAR(250),
imgCapa VARBINARY(MAX),
idGenero INT FOREIGN KEY REFERENCES tblGenero(idGenero),
idAutor INT FOREIGN KEY REFERENCES tblAutor(idAutor)
)
GO
CREATE TABLE tblPublicacao(
idPublicacao INT NOT NULL PRIMARY KEY IDENTITY,
conteudo VARCHAR(1000),
dataPublic DATETIME2,
idUsuario INT FOREIGN KEY REFERENCES tblUsuario(idUsuario) ON DELETE CASCADE,
idLivro INT NULL FOREIGN KEY REFERENCES tblLivro(idLivro) ON DELETE CASCADE
)
GO
CREATE TABLE tblComentario(
idComentario INT NOT NULL PRIMARY KEY IDENTITY,
comentario VARCHAR(248),
data_coment DATETIME2,
idPublicacao INT FOREIGN KEY REFERENCES tblPublicacao(idPublicacao) ON DELETE CASCADE,
idUsuario INT FOREIGN KEY REFERENCES tblUsuario(idUsuario)
)
GO
CREATE TABLE tblBlogPost(
idBlogPost INT NOT NULL PRIMARY KEY IDENTITY,
titulo VARCHAR(80),
conteudo VARCHAR(1000),
dataPost DATETIME2,
idAdmin INT FOREIGN KEY REFERENCES tblAdmin(idAdmin),
imgPost VARBINARY(MAX)
)
GO
CREATE TABLE tblLivrosFavoritos(
idUsuario INT FOREIGN KEY REFERENCES tblUsuario(idUsuario) ON DELETE CASCADE,
idLivro INT FOREIGN KEY REFERENCES tblLivro(idLivro) ON DELETE CASCADE,
PRIMARY KEY(idUsuario, idLivro)
)
GO
CREATE TABLE tblLikesPorPost(
idUsuario INT FOREIGN KEY REFERENCES tblUsuario(idUsuario),
idPublicacao INT FOREIGN KEY REFERENCES tblPublicacao(idPublicacao) ON DELETE CASCADE,
PRIMARY KEY(idUsuario, idPublicacao)
)
GO
CREATE TABLE tblLikesPorComentario(
idUsuario INT FOREIGN KEY REFERENCES tblUsuario(idUsuario),
idComentario INT FOREIGN KEY REFERENCES tblComentario(idComentario) ON DELETE CASCADE,
PRIMARY KEY(idUsuario, idComentario)
)
GO
CREATE TABLE tblSeguidores(
idSeguidor INT FOREIGN KEY REFERENCES tblUsuario(idUsuario),
idSeguido INT FOREIGN KEY REFERENCES tblUsuario(idUsuario) ON DELETE CASCADE,
PRIMARY KEY(idSeguidor, idSeguido)
)
GO
CREATE TABLE tblTipoNotificacao(
idTipoNotificacao INT NOT NULL PRIMARY KEY IDENTITY,
descTipo VARCHAR(80) UNIQUE
)
GO
CREATE TABLE tblNotificacao(
idNotificacao INT NOT NULL PRIMARY KEY IDENTITY,
mensagem VARCHAR(255),
dataNotificacao DATETIME2 DEFAULT CURRENT_TIMESTAMP,
visualizada BIT DEFAULT 0,
tipoNotificacao INT NOT NULL FOREIGN KEY REFERENCES tblTipoNotificacao(idTipoNotificacao),
idUsuario INT NULL FOREIGN KEY REFERENCES tblUsuario(idUsuario) ON DELETE CASCADE,
idAdmin INT NULL FOREIGN KEY REFERENCES tblAdmin(idAdmin) ON DELETE CASCADE
)
GO
CREATE TABLE tblStatusDenuncia(
idStatusDenuncia INT NOT NULL PRIMARY KEY IDENTITY,
descStatus VARCHAR(80) UNIQUE
)
GO
CREATE TABLE tblDenuncia(
idDenuncia INT NOT NULL PRIMARY KEY IDENTITY,
data_denuncia DATETIME DEFAULT CURRENT_TIMESTAMP,
observacao_admin VARCHAR(255),
idUsuario INT NOT NULL FOREIGN KEY REFERENCES tblUsuario(idUsuario),
idPublicacao INT NOT NULL FOREIGN KEY REFERENCES tblPublicacao(idPublicacao) ON DELETE CASCADE,
idAdmin INT NULL FOREIGN KEY REFERENCES tblAdmin(idAdmin),
statusDenun INT NOT NULL FOREIGN KEY REFERENCES tblStatusDenuncia(idStatusDenuncia)
)

--use master
--drop database versami
