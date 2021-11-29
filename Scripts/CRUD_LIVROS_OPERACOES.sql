DROP	PROCEDURE  CRUD_LIVROS_OPERACOES
GO
CREATE	PROCEDURE  CRUD_LIVROS_OPERACOES
(
@INP_STATUS		VARCHAR(003)	,
@INP_ID_LIVRO		INTEGER		,	
@INP_NOME_LIVRO		VARCHAR(255)	,
@INP_PRECO_LIVRO	FLOAT		,
@INP_DATA_CADASTRO	DATETIME	,
@INP_AUTOR		VARCHAR(100)
)
WITH
ENCRYPTION
AS
DECLARE
@V_CODLIVRO	INTEGER

	IF @INP_STATUS = 'MAN'	GOTO	MANUTENCAO
	IF @INP_STATUS = 'EXC'	GOTO	EXCLUSAO
	IF @INP_STATUS = 'CON'	GOTO	CONSULTA


----------------------------------------------------------
CONSULTA:
----------------------------------------------------------
	SELECT	ID_LIVRO	,
		NOME_LIVRO	,
		PRECO_LIVRO	,
		DATA_CADASTRO	,
		AUTOR
	FROM	TB_LIVROS


GOTO FAZ_NADA



----------------------------------------------------------
EXCLUSAO:
----------------------------------------------------------

	DELETE  FROM	TB_LIVROS
	WHERE		ID_LIVRO	=	@INP_ID_LIVRO

GOTO FAZ_NADA
----------------------------------------------------------
MANUTENCAO:
----------------------------------------------------------

SELECT	@V_CODLIVRO	=	ID_LIVRO
FROM	TB_LIVROS WITH(NOLOCK)
WHERE	ID_LIVRO	=	@INP_ID_LIVRO


IF @V_CODLIVRO	> 0	GOTO	EDITAR
IF @V_CODLIVRO	= 0	GOTO	INCLUSAO

GOTO FAZ_NADA

----------------------------------------------------------
EDITAR:
----------------------------------------------------------

	UPDATE	TB_LIVROS SET
		NOME_LIVRO	=	@INP_NOME_LIVRO		,
		PRECO_LIVRO	=	@INP_PRECO_LIVRO	,
		DATA_CADASTRO	=	@INP_DATA_CADASTRO	,
		AUTOR		=	@INP_AUTOR
	WHERE	ID_LIVRO	=	@INP_ID_LIVRO


GOTO FAZ_NADA
----------------------------------------------------------
INCLUSAO:
----------------------------------------------------------


	INSERT INTO	TB_LIVROS 
	(
		NOME_LIVRO		,	
		PRECO_LIVRO		,
		DATA_CADASTRO		,
		AUTOR		
	)
	VALUES
	(
		@INP_NOME_LIVRO		,
		@INP_PRECO_LIVRO	,
		@INP_DATA_CADASTRO	,
		@INP_AUTOR
	)


GOTO FAZ_NADA



----------------------------------------------------------
FAZ_NADA:
----------------------------------------------------------

RETURN