DROP	PROCEDURE  CRUD_LIVROS_OPERACOES_PEDIDOS
GO
CREATE	PROCEDURE  CRUD_LIVROS_OPERACOES_PEDIDOS
(
@INP_STATUS		VARCHAR(003)	,
@INP_COD		INTEGER		,
@INP_CLIENTE		VARCHAR(255)	,
@INP_TOTAL		FLOAT		,
@INP_DATA_PEDIDO	DATETIME
)
WITH
ENCRYPTION
AS
DECLARE
@V_CODPEDIDO	INTEGER

	IF @INP_STATUS = 'MAN'	GOTO	MANUTENCAO
	IF @INP_STATUS = 'EXC'	GOTO	EXCLUSAO
	IF @INP_STATUS = 'CO1'	GOTO	CONSULTA_PEDIDOS

CONSULTA_PEDIDOS:
----------------------------------------------------------
	SELECT	COD	,
		CLIENTE	,
		TOTAL	,
		DATA_PEDIDO	=	CONVERT(VARCHAR,DATA_PEDIDO,103)
	FROM	TB_PEDIDOS


GOTO FAZ_NADA
----------------------------------------------------------

----------------------------------------------------------
EXCLUSAO:
----------------------------------------------------------

	DELETE  FROM	TB_PEDIDOS
	WHERE		COD	=	@INP_COD

GOTO FAZ_NADA
----------------------------------------------------------
MANUTENCAO:
----------------------------------------------------------


SELECT	@V_CODPEDIDO	=	COD
FROM	TB_PEDIDOS WITH(NOLOCK)
	WHERE		COD	=	@INP_COD

IF @V_CODPEDIDO IS NULL SET @V_CODPEDIDO = 0


IF @V_CODPEDIDO	> 0	GOTO	EDITAR
IF @V_CODPEDIDO	= 0	GOTO	INCLUSAO

GOTO FAZ_NADA

----------------------------------------------------------
EDITAR:
----------------------------------------------------------

	UPDATE	TB_PEDIDOS SET
		CLIENTE		=	@INP_CLIENTE		,
		TOTAL		=	@INP_TOTAL		,
		DATA_PEDIDO	=	@INP_DATA_PEDIDO			
	WHERE	COD		=	@INP_COD


GOTO FAZ_NADA
----------------------------------------------------------
INCLUSAO:
----------------------------------------------------------


	INSERT INTO	TB_PEDIDOS 
	(
		CLIENTE		,	
		TOTAL		,
		DATA_PEDIDO	
		
	)
	VALUES
	(
		@INP_CLIENTE		,
		@INP_TOTAL		,
		@INP_DATA_PEDIDO
	)


GOTO FAZ_NADA



----------------------------------------------------------
FAZ_NADA:
----------------------------------------------------------

RETURN