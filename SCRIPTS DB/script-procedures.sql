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

CREATE PROC usp_faixaEtatariaUsers
AS
SELECT 
    CASE 
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 0 AND 17 THEN '0-17'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 18 AND 25 THEN '18-25'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 26 AND 35 THEN '26-35'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END AS FaixaEtaria,
    COUNT(*) AS Quantidade
FROM tblUsuario
GROUP BY 
    CASE 
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 0 AND 17 THEN '0-17'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 18 AND 25 THEN '18-25'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 26 AND 35 THEN '26-35'
        WHEN DATEDIFF(YEAR, data_nasc, GETDATE()) BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END;
