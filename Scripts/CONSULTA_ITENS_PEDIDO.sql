DROP	PROCEDURE CONSULTA_ITENS_PEDIDO
GO
CREATE	PROCEDURE CONSULTA_ITENS_PEDIDO
(
@INP_COD		INTEGER		
)
WITH
ENCRYPTION
AS


	SELECT	SEQ		,
		COD_PEDIDO	,
		COD_PRODUTO	,
		NOME_CLIENTE	,
		DESCRICAO	,
		PRECO		
	FROM	TB_ITENS_PEDIDOS
	WHERE	COD_PEDIDO =	@INP_COD


RETURN