CREATE OR ALTER VIEW datamart_products_inventory_en
AS
SELECT EMPRESA_CODIGO AS company_code_product_stock_balance, -- Código da empresa com saldo do produto em estoque
       EMPRESA_NOME AS company_name_product_stock_balance, -- Nome da empresa com saldo do produto em estoque
	   FILIAL_CODIGO AS branch_code_product_stock_balance, -- Código da filial com saldo do produto em estoque
	   FILIAL_NOME AS branch_name_product_stock_balance, -- Nome da filial com saldo do produto em estoque
	   PRODUTO AS product_in_stock, -- Produto em estoque
	   NM_PRODUTO AS product_name_in_stock, -- Nome do produto em estoque
	   TIPO_PRODUTO AS product_type_in_stock, -- Tipo do produto em estoque
	   NM_TIPO_PRODUTO AS product_type_name_in_stock, -- Nome do tipo de produto em estoque
	   GRUPO_PRODUTO AS product_group_in_stock, -- Grupo do produto em estoque
	   NM_GRUPO_PRODUTO AS product_group_name_in_stock, -- Nome do grupo do produto em estoque
	   YEAR(DT_MOVIMENTO) AS stock_balance_year, -- Ano do saldo em estoque
	   MONTH(DT_MOVIMENTO) AS stock_balance_month, -- Mês do saldo em estoque
	   DATEPART(QUARTER, DT_MOVIMENTO) AS stock_balance_quarter, -- Trimestre do saldo em estoque
	   QTD_MOVIMENTO_ESTOQUE AS product_quantity_in_stock, -- Quantidade do produto em estoque
	   VALOR_FINANCEIRO AS product_financial_value_in_stock, -- Valor financeiro do produto em estoque
	   CUSTO_MEDIO AS average_cost_of_product_in_stock -- Custo médio do produto em estoque
FROM 
[dbo].[BI_EST_FATO_KARDEX_SALDOS_INICIAIS]
WHERE 
DT_MOVIMENTO >= '2023-01-01'
AND QTD_MOVIMENTO_ESTOQUE > 0

