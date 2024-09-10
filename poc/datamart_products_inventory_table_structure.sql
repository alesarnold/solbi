CREATE TABLE [dbo].[etl_solbi_inventory](
    [empresa_saldo_do_produto_em_estoque] [varchar](4) NULL, -- Company with product balance in inventory
    [nome_da_empresa_saldo_do_produto_em_estoque] [varchar](60) NOT NULL, -- Name of the company with product balance in inventory
    [filial_saldo_do_produto_em_estoque] [varchar](12) NOT NULL, -- Branch with product balance in inventory
    [nome_da_filial_saldo_do_produto_em_estoque] [varchar](41) NOT NULL, -- Name of the branch with product balance in inventory
    [produto_em_estoque] [varchar](15) NOT NULL, -- Product in inventory
    [nome_do_produto_em_estoque] [varchar](50) NOT NULL, -- Name of the product in inventory
    [tipo_do_produto_em_estoque] [varchar](2) NOT NULL, -- Type of product in inventory
    [nome_tipo_do_produto_em_estoque] [varchar](55) NULL, -- Name of the type of product in inventory
    [grupo_do_produto_em_estoque] [varchar](4) NOT NULL, -- Group of product in inventory
    [nome_grupo_do_produto_em_estoque] [varchar](50) NOT NULL, -- Name of the group of product in inventory
    [ano_do_saldo_em_estoque] [int] NULL, -- Year of the inventory balance
    [mes_do_saldo_em_estoque] [int] NULL, -- Month of the inventory balance
    [trimestre_do_saldo_em_estoque] [int] NULL, -- Quarter of the inventory balance
    [saldo_do_produto_em_estoque] [float] NOT NULL, -- Product balance in inventory
    [valor_do_produto_em_estoque] [float] NOT NULL, -- Value of the product in inventory
    [custo_medio_do_produto_em_estoque] [float] NOT NULL -- Average cost of the product in inventory
) ON [DATA]
GO
