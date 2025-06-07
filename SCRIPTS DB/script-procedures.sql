-- Procedure para login na aplicacao Desktop

CREATE PROC usp_loginAdministrador
@arroba varchar(30),
@senha varchar(250)

AS

DECLARE @getArroba varchar(30), @getSenha varchar(250)
SET @getArroba = (SELECT arroba_usuario FROM tblAdmin WHERE arroba_usuario = @arroba)
SET @getSenha = (SELECT senha FROM tblAdmin WHERE arroba_usuario = @arroba AND senha = @senha)

IF (LEN(@getArroba) > 0) AND (LEN(@getSenha) > 0)
BEGIN
	IF(@getArroba != '') AND (@getSenha != '')
	BEGIN
		SELECT idAdmin, nome, arroba_usuario, permissao FROM tblAdmin WHERE arroba_usuario = @getArroba
	END
END

-- Procedure para login na Aplicacao Web

CREATE PROC usp_loginUsuario
@arroba varchar(30),
@senha varchar(250)

AS

DECLARE @getArroba varchar(30), @getSenha varchar(250)
SET @getArroba = (SELECT arroba_usuario FROM tblUsuario WHERE arroba_usuario = @arroba)
SET @getSenha = (SELECT senha FROM tblUsuario WHERE arroba_usuario = @arroba AND senha = @senha)

IF (LEN(@getArroba) > 0) AND (LEN(@getSenha) > 0)
BEGIN
	IF(@getArroba != '') AND (@getSenha != '')
	BEGIN
		SELECT idUsuario, nome, arroba_usuario, fotoUsuario, fotoCapa, bio_usuario FROM tblUsuario WHERE arroba_usuario = @arroba
	END
END
