SELECT EMPRESA_CODIGO         empresa_saldo_do_prouduto_em_estoque, 
       EMPRESA_NOME           nome_da_empresa_saldo_do_produto_em_estoque,
	   FILIAL_CODIGO          filial_saldo_do_produto_em_estoque,
	   FILIAL_NOME            nome_da_filial_saldo_do_produto_em_estoque,
	   PRODUTO                produto_em_estoque,
	   NM_PRODUTO             nome_do_produto_em_estoque,
	   TIPO_PRODUTO           tipo_do_produto_em_estoque,
	   NM_TIPO_PRODUTO        nome_tipo_do_produto_em_estoque,
	   GRUPO_PRODUTO          grupo_do_produto_em_estoque, 
	   NM_GRUPO_PRODUTO       nome_grupo_do_produto_em_estoque,
	   YEAR(DT_MOVIMENTO)     ano_do_saldo_em_estoque,
	   MONTH(DT_MOVIMENTO)    mes_do_saldo_em_estoque,
	   DATEPART(QUARTER, DT_MOVIMENTO)  trimestre_do_saldo_em_estoque,
	   QTD_MOVIMENTO_ESTOQUE  saldo_do_produto_em_estoque,
	   VALOR_FINANCEIRO       valor_do_produto_em_estoque,
	   CUSTO_MEDIO            custo_medio_do_produto_em_estoque
FROM 
[dbo].[BI_EST_FATO_KARDEX_SALDOS_INICIAIS]
WHERE 
DT_MOVIMENTO >= '2023-01-01'
AND QTD_MOVIMENTO_ESTOQUE > 0


