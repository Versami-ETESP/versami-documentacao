create database versami
go
use versami
go
create table tblPerguntaSecreta(
idPergunta int not null primary key identity(1,1),
pergunta varchar (255)
)
go
create table tblUsuario(
idUsuario int not null primary key identity(1,1),
nome varchar(50),
data_nasc date,
email varchar(80),
senha varchar(250),
arroba_usuario varchar(30) unique,
fotoUsuario varbinary(max),
fotoCapa varbinary(max),
bio_usuario VARCHAR(255) null,
resposta varchar(255),
idPergunta int null foreign key references tblPerguntaSecreta(idPergunta)
)
go
create table tblPermissao(
idPermissao int not null primary key identity(1,1),
descricao varchar(50) not null unique
)
go
create table tblAdmin(
idAdmin int not null primary key identity(1,1),
nome varchar(80),
data_nasc date,
email varchar(80),
senha varchar(250),
arroba_usuario varchar(30) unique,
permissao int foreign key references tblPermissao(idPermissao) on delete cascade,
pergunta int foreign key references tblPerguntaSecreta(idPergunta),
resposta varchar(255)
)
go
create table tblAutor(
idAutor int not null primary key identity(1,1),
nomeAutor varchar(80),
descAutor varchar(250)
)
go
create table tblGenero(
idGenero int not null primary key identity(1,1),
nomeGenero varchar(80),
descGenero varchar(250)
)
go
create table tblLivro(
idLivro int not null primary key identity(1,1),
nomeLivro varchar(80),
descLivro varchar(250),
imgCapa varbinary(max),
idGenero int foreign key references tblGenero(idGenero),
idAutor int foreign key references tblAutor(idAutor)
)
go
create table tblPublicacao(
idPublicacao int not null primary key identity(1,1),
conteudo varchar(1000),
dataPublic DATETIME2,
idUsuario int foreign key references tblUsuario(idUsuario) on delete cascade,
idLivro int null foreign key references tblLivro(idLivro) on delete cascade
)
go
create table tblComentario(
idComentario int not null primary key identity(1,1),
comentario varchar(248),
data_coment DATETIME2,
idPublicacao int foreign key references tblPublicacao(idPublicacao) on delete cascade,
idUsuario int foreign key references tblUsuario(idUsuario)
)
go
create table tblBlogPost(
idBlogPost int primary key identity(1,1),
titulo varchar(80),
conteudo varchar (1000),
dataPost DATETIME2,
idAdmin int foreign key references tblAdmin(idAdmin)
)
go
create table tblLivrosFavoritos(
idUsuario int foreign key references tblUsuario(idUsuario) on delete cascade,
idLivro int foreign key references tblLivro(idLivro) on delete cascade,
primary key(idUsuario, idLivro)
)
go
create table tblLikesPorPost(
idUsuario int foreign key references tblUsuario(idUsuario),
idPublicacao int foreign key references tblPublicacao(idPublicacao) on delete cascade,
primary key(idUsuario, idPublicacao)
)
go
create table tblLikesPorComentario(
idUsuario int foreign key references tblUsuario(idUsuario),
idComentario int foreign key references tblComentario(idComentario) on delete cascade,
primary key(idUsuario, idComentario)
)
go
create table tblSeguidores(
idSeguidor int foreign key references tblUsuario(idUsuario),
idSeguido int foreign key references tblUsuario(idUsuario) on delete cascade,
primary key(idSeguidor, idSeguido)
)
go
create table tblTipoNotificacao(
idTipoNotificacao int not null primary key identity(1,1),
descTipo varchar(80)
)
go
create table tblNotificacao(
idNotificacao int not null primary key identity (1,1),
mensagem varchar(255),
dataNotificacao DATETIME2 default CURRENT_TIMESTAMP,
visualizada bit default 0,
tipoNotificacao int not null foreign key references tblTipoNotificacao(idTipoNotificacao),
idUsuario int null foreign key references tblUsuario(idUsuario) on delete cascade,
idAdmin int null foreign key references tblAdmin(idAdmin) on delete cascade
)
go
create table tblStatusDenuncia(
idStatusDenuncia int primary key identity (1,1),
descStatus varchar(80)
)
go
create table tblDenuncia(
idDenuncia int primary key identity (1,1),
data_denuncia DATETIME DEFAULT CURRENT_TIMESTAMP,
observacao_admin varchar(255),
idUsuario int not null foreign key references tblUsuario(idUsuario),
idPublicacao int not null foreign key references tblPublicacao(idPublicacao) on delete cascade,
idAdmin int null foreign key references tblAdmin(idAdmin),
statusDenun int not null foreign key references tblStatusDenuncia(idStatusDenuncia)
)
go
ALTER TABLE tblBlogPost ADD imgPost VARBINARY(MAX)


--use master
--drop database versami
