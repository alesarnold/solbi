CREATE OR ALTER VIEW datamart_sales_en
AS
SELECT
    TIPO AS sale_or_product_return_movement_type, -- Tipo de movimento: venda ou devolu��o de produto
    SAIDA_FILIAL AS branch_that_sold_the_product, -- Filial que vendeu o produto
    SAIDA_NM_FILIAL AS name_of_the_branch_that_sold_the_product, -- Nome da filial que vendeu o produto
    DT_PREVISTA_ENTREGA AS expected_delivery_date, -- Data prevista de entrega
    DT_EMISSAO_SAIDA AS sale_issue_date, -- Data de emiss�o da venda do produto
    DT_CONTABILIZACAO AS accounting_date, -- Data de contabiliza��o
    SAIDA_NOTA AS sales_invoice_number, -- N�mero da NF de venda
    SAIDA_SERIE AS exit_series, -- S�rie de sa�da
    GRUPO_ECONOMICO AS economic_group, -- Grupo econ�mico
    NM_GRUPO_ECONOMICO AS economic_group_name, -- Nome do grupo econ�mico
    SAIDA_CLIENTE AS client_who_bought_the_product, -- Cliente que comprou o produto
    SAIDA_LOJA AS client_store, -- Loja do cliente
    SAIDA_NN_CLIENTE AS client_name, -- Nome do cliente
    MUNICIPIO AS client_city, -- Cidade do cliente
    ESTADO AS client_state, -- Estado do cliente
    CD_PAIS AS client_country_code, -- C�digo do pa�s do cliente
    PAIS AS client_country_name, -- Nome do pa�s do cliente
    PRODUTO AS sold_product, -- Produto que foi vendido
    NM_PRODUTO AS sold_product_name, -- Nome do produto que foi vendido
    TIPO_PRODUTO AS sold_product_type, -- Tipo do produto que foi vendido
    NM_TIPO_PRODUTO AS sold_product_type_name, -- Nome do tipo de produto que foi vendido
    GRUPO_PRODUTO AS product_group, -- Grupo do produto que foi vendido
    NM_GRUPO_PRODUTO AS product_group_name, -- Nome do grupo do produto que foi vendido
    QUANTIDADE AS quantity_sold, -- Quantidade vendida
    VALOR_UNITARIO AS unit_price, -- Valor unit�rio
    VALOR_TOTAL AS total_value, -- Valor total
    BASE_IPI AS ipi_base, -- Base do IPI
    ALIQUOTA_IPI AS ipi_rate, -- Al�quota do IPI
    VALOR_IPI AS ipi_value, -- Valor do IPI
    BASE_ICM AS icm_base, -- Base do ICM
    ALIQUOTA_ICM AS icm_rate, -- Al�quota do ICM
    VALOR_ICM AS icm_value, -- Valor do ICM
    BASE_COFINS AS cofins_base, -- Base do COFINS
    ALIQUOTA_COFINS AS cofins_rate, -- Al�quota do COFINS
    VALOR_COFINS AS cofins_value, -- Valor do COFINS
    BASE_PIS AS pis_base, -- Base do PIS
    ALIQUOTA_PIS AS pis_rate, -- Al�quota do PIS
    VALOR_PIS AS pis_value, -- Valor do PIS
    VALOR_FRETE AS freight_value, -- Valor do frete
    VALOR_SEGURO AS insurance_value, -- Valor do seguro
    CUSTO AS cost, -- Custo
    PEDIDO_VENDA AS sales_order, -- Pedido de venda
    ITEM_PEDIDO_VENDA AS sales_order_item, -- Item do pedido de venda
    TES, -- TES
    CFOP, -- CFOP
    CFOP_TEXTO AS cfop_text, -- Texto do CFOP
    TES_GERA_DUPLICATA AS tes_generates_duplicate, -- TES gera duplicata
    TES_MOVIMENTA_ESTOQUE AS tes_moves_stock, -- TES movimenta estoque
    CONTA_ESTOQUE AS stock_account, -- Conta do estoque
    NM_CONTA_ESTOQUE AS stock_account_name, -- Nome da conta do estoque
    CONTA_RECEITA AS revenue_account, -- Conta da receita
    NM_CONTA_RECEITA AS revenue_account_name, -- Nome da conta da receita
    VENDEDOR_01 AS seller_01, -- Vendedor 01
    NM_VENDEDOR_01 AS seller_01_name, -- Nome do vendedor 01
    VENDEDOR_02 AS seller_02, -- Vendedor 02
    NM_VENDEDOR_02 AS seller_02_name, -- Nome do vendedor 02
    VENDEDOR_03 AS seller_03, -- Vendedor 03
    NM_VENDEDOR_03 AS seller_03_name, -- Nome do vendedor 03
    VENDEDOR_04 AS seller_04, -- Vendedor 04
    NM_VENDEDOR_04 AS seller_04_name, -- Nome do vendedor 04
    VENDEDOR_05 AS seller_05, -- Vendedor 05
    NM_VENDEDOR_05 AS seller_05_name, -- Nome do vendedor 05
    PESO_BRUTO AS gross_weight, -- Peso bruto
    PESO_LIQUIDO AS net_weight, -- Peso l�quido
    CONFERENCIA_BI_OK AS bi_conference_ok, -- Confer�ncia BI OK
    VENDA_INTERCOMPANY AS intercompany_sale, -- Venda intercompany
    CNPJ, -- CNPJ
    CD_GRUPO_SINTETICO AS synthetic_group_code, -- C�digo do grupo sint�tico
    NM_GRUPO_SINTETICO AS synthetic_group_name, -- Nome do grupo sint�tico
    CD_GRUPO_ANALITICO AS analytical_group_code, -- C�digo do grupo anal�tico
    NM_GRUPO_ANALITICO AS analytical_group_name, -- Nome do grupo anal�tico
    CD_MOEDA AS currency_code, -- C�digo da moeda
    NM_MOEDA AS currency_name, -- Nome da moeda
    PESO_TEORICO_UNITARIO AS theoretical_unit_weight, -- Peso te�rico unit�rio
    PESO_TEORICO_KILOS AS theoretical_weight_in_kilos, -- Peso te�rico em quilos
    TAXA AS rate -- Taxa
FROM BI_FAT_FATO_VENDAS
WHERE TES_GERA_DUPLICATA = 'S'
AND VENDA_INTERCOMPANY <> 'S'
