create or alter view datamart_sales_pt_br
as
SELECT
	TIPO AS tipo_movimento_venda_ou_devolucao_de_produto, -- Type of movement: sale or product return
    SAIDA_FILIAL AS filial_que_vendeu_o_produto, -- Branch that sold the product
    SAIDA_NM_FILIAL AS nome_da_filial_que_vendeu_o_produto, -- Name of the branch that sold the product
    DT_PREVISTA_ENTREGA AS data_prevista_entrega, -- Expected delivery date
    DT_EMISSAO_SAIDA AS data_venda_do_produto, -- Issue date of sale of product
    DT_CONTABILIZACAO AS data_contabilizacao, -- Accounting date
    SAIDA_NOTA AS nota_saida, -- Exit note
    SAIDA_SERIE AS serie_saida, -- Exit series
    GRUPO_ECONOMICO AS grupo_economico, -- Economic group
    NM_GRUPO_ECONOMICO AS nome_grupo_economico, -- Name of the economic group
    SAIDA_CLIENTE AS cliente_que_comprou_o_produto, -- Client that bought the product
    SAIDA_LOJA AS filial_do_cliente_cliente_que_comprou_o_produto, -- Client's store
    SAIDA_NN_CLIENTE AS nome_do_cliente_cliente_que_comprou_o_produto, -- Name of the client
    MUNICIPIO cidade_do_cliente_que_comprou_o_produto, -- Municipality
    ESTADO  estado_do_cliente_cliente_que_comprou_o_produto, -- State
    CD_PAIS AS codigo_do_pais_do_cliente_cliente_que_comprou_o_produto, -- Country code
    PAIS nome_do_pais_do_cliente_cliente_que_comprou_o_produto, -- Country
    PRODUTO AS produto_que_foi_vendido, -- Product that was sold
    NM_PRODUTO AS nome_do_produto_que_foi_vendido, -- Name of the product that was sold
    TIPO_PRODUTO AS tipo_do_produto_que_foi_vendido, -- Type of product that was sold
    NM_TIPO_PRODUTO AS nome_do_tipo_do_produto_que_foi_vendido, -- Name of the type of product that was sold
    GRUPO_PRODUTO AS grupo_do_produto_que_foi_vendido, -- Group of product that was sold
    NM_GRUPO_PRODUTO AS nome_do_grupo_do_produto_que_foi_vendido, -- Name of the group of product that was sold
    QUANTIDADE AS quantidade_vendida, -- Quantity sold
    VALOR_UNITARIO AS valor_unitario, -- Unit value
    VALOR_TOTAL AS valor_total, -- Total value
    BASE_IPI AS base_do_ipi, -- IPI base
    ALIQUOTA_IPI AS aliquota_do_ipi, -- IPI rate
    VALOR_IPI AS valor_do_ipi, -- IPI value
    BASE_ICM AS base_do_icm, -- ICM base
    ALIQUOTA_ICM AS aliquota_do_icm, -- ICM rate
    VALOR_ICM AS valor_do_icm, -- ICM value
    BASE_COFINS AS base_do_cofins, -- COFINS base
    ALIQUOTA_COFINS AS aliquota_do_cofins, -- COFINS rate
    VALOR_COFINS AS valor_do_cofins, -- COFINS value
    BASE_PIS AS base_do_pis, -- PIS base
    ALIQUOTA_PIS AS aliquota_do_pis, -- PIS rate
    VALOR_PIS AS valor_do_pis, -- PIS value
    VALOR_FRETE AS valor_do_frete, -- Freight value
    VALOR_SEGURO AS valor_do_seguro, -- Insurance value
    CUSTO AS custo, -- Cost
    PEDIDO_VENDA AS pedido_de_venda, -- Sales order
    ITEM_PEDIDO_VENDA AS item_do_pedido_de_venda, -- Sales order item
    TES, -- TES
    CFOP, -- CFOP
    CFOP_TEXTO AS texto_do_cfop, -- CFOP text
    TES_GERA_DUPLICATA AS tes_gera_duplicata, -- TES generates duplicate
    TES_MOVIMENTA_ESTOQUE AS tes_movimenta_estoque, -- TES moves stock
    CONTA_ESTOQUE AS conta_do_estoque, -- Stock account
    NM_CONTA_ESTOQUE AS nome_da_conta_do_estoque, -- Name of the stock account
    CONTA_RECEITA AS conta_da_receita, -- Revenue account
    NM_CONTA_RECEITA AS nome_da_conta_da_receita, -- Name of the revenue account
    VENDEDOR_01 AS vendedor_01, -- Seller 01
    NM_VENDEDOR_01 AS nome_do_vendedor_01, -- Name of seller 01
    VENDEDOR_02 AS vendedor_02, -- Seller 02
    NM_VENDEDOR_02 AS nome_do_vendedor_02, -- Name of seller 02
    VENDEDOR_03 AS vendedor_03, -- Seller 03
    NM_VENDEDOR_03 AS nome_do_vendedor_03, -- Name of seller 03
    VENDEDOR_04 AS vendedor_04, -- Seller 04
    NM_VENDEDOR_04 AS nome_do_vendedor_04, -- Name of seller 04
    VENDEDOR_05 AS vendedor_05, -- Seller 05
    NM_VENDEDOR_05 AS nome_do_vendedor_05, -- Name of seller 05
    PESO_BRUTO AS peso_bruto, -- Gross weight
    PESO_LIQUIDO AS peso_liquido, -- Net weight
    CONFERENCIA_BI_OK AS conferencia_bi_ok, -- BI conference OK
    VENDA_INTERCOMPANY AS venda_intercompany, -- Intercompany sale
    CNPJ, -- CNPJ
    CD_GRUPO_SINTETICO AS codigo_do_grupo_sintetico, -- Synthetic group code
    NM_GRUPO_SINTETICO AS nome_do_grupo_sintetico, -- Name of the synthetic group
    CD_GRUPO_ANALITICO AS codigo_do_grupo_analitico, -- Analytical group code
    NM_GRUPO_ANALITICO AS nome_do_grupo_analitico, -- Name of the analytical group
    CD_MOEDA AS codigo_da_moeda, -- Currency code
    NM_MOEDA AS nome_da_moeda, -- Currency name
    PESO_TEORICO_UNITARIO AS peso_teorico_unitario, -- Theoretical unit weight
    PESO_TEORICO_KILOS AS peso_teorico_kilos, -- Theoretical kilos weight
    TAXA AS taxa -- Rate
FROM BI_FAT_FATO_VENDAS
WHERE TES_GERA_DUPLICATA = 'S'
AND VENDA_INTERCOMPANY <> 'S'




