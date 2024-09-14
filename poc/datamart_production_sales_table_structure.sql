CREATE TABLE [dbo].[etl_solbi_sales](
    tipo_movimento_venda_ou_devolucao_de_produto VARCHAR(10) NOT NULL, -- Type of movement: sale or product return
    filial_que_vendeu_o_produto VARCHAR(6) NOT NULL, -- Branch that sold the product
    nome_da_filial_que_vendeu_o_produto VARCHAR(41) NOT NULL, -- Name of the branch that sold the product
    data_prevista_entrega DATE NULL, -- Expected delivery date
    DT_EMISSAO_SAIDA AS data_venda_do_produto, -- Issue date of sale of product
    data_contabilizacao DATE NULL, -- Accounting date
    nota_saida VARCHAR(9) NOT NULL, -- Exit note
    serie_saida INT NULL, -- Exit series
    grupo_economico VARCHAR(6) NOT NULL, -- Economic group
    nome_grupo_economico VARCHAR(40) NULL, -- Name of the economic group
    cliente_que_comprou_o_produto VARCHAR(9) NOT NULL, -- Client that bought the product
    filial_do_cliente_cliente_que_comprou_o_produto VARCHAR(4) NOT NULL, -- Client's branch
    nome_do_cliente_cliente_que_comprou_o_produto VARCHAR(40) NOT NULL, -- Client's name
    cidade_do_cliente_que_comprou_o_produto VARCHAR(60) NOT NULL, -- Client's city
    estado_do_cliente_cliente_que_comprou_o_produto VARCHAR(2) NOT NULL, -- Client's state
    codigo_do_pais_do_cliente_cliente_que_comprou_o_produto VARCHAR(5) NOT NULL, -- Client's country code
    nome_do_pais_do_cliente_cliente_que_comprou_o_produto VARCHAR(50) NOT NULL, -- Client's country name
    produto_que_foi_vendido VARCHAR(15) NOT NULL, -- Product that was sold
    nome_do_produto_que_foi_vendido VARCHAR(50) NOT NULL, -- Name of the product that was sold
    tipo_do_produto_que_foi_vendido VARCHAR(2) NOT NULL, -- Type of the product that was sold
    nome_do_tipo_do_produto_que_foi_vendido VARCHAR(55) NOT NULL, -- Name of the type of product that was sold
    grupo_do_produto_que_foi_vendido VARCHAR(4) NOT NULL, -- Group of the product that was sold
    nome_do_grupo_do_produto_que_foi_vendido VARCHAR(50) NOT NULL, -- Name of the group of product that was sold
    quantidade_vendida FLOAT NOT NULL, -- Quantity sold
    valor_unitario FLOAT NOT NULL, -- Unit value
    valor_total FLOAT NOT NULL, -- Total value
    base_do_ipi FLOAT NOT NULL, -- IPI base
    aliquota_do_ipi FLOAT NOT NULL, -- IPI rate
    valor_do_ipi FLOAT NOT NULL, -- IPI value
    base_do_icm FLOAT NOT NULL, -- ICM base
    aliquota_do_icm FLOAT NOT NULL, -- ICM rate
    valor_do_icm FLOAT NOT NULL, -- ICM value
    base_do_cofins FLOAT NOT NULL, -- COFINS base
    aliquota_do_cofins FLOAT NOT NULL, -- COFINS rate
    valor_do_cofins FLOAT NOT NULL, -- COFINS value
    base_do_pis FLOAT NOT NULL, -- PIS base
    aliquota_do_pis FLOAT NOT NULL, -- PIS rate
    valor_do_pis FLOAT NOT NULL, -- PIS value
    valor_do_frete FLOAT NOT NULL, -- Freight value
    valor_do_seguro FLOAT NOT NULL, -- Insurance value
    custo FLOAT NOT NULL, -- Cost
    pedido_de_venda VARCHAR(7) NULL, -- Sales order
    item_do_pedido_de_venda VARCHAR(3) NULL, -- Sales order item
    TES VARCHAR(3) NOT NULL, -- TES
    CFOP VARCHAR(5) NOT NULL, -- CFOP
    texto_do_cfop VARCHAR(61) NOT NULL, -- CFOP text
    tes_gera_duplicata VARCHAR(1) NOT NULL, -- TES generates duplicate
    tes_movimenta_estoque VARCHAR(1) NOT NULL, -- TES moves stock
    conta_do_estoque VARCHAR(20) NOT NULL, -- Stock account
    nome_da_conta_do_estoque VARCHAR(40) NULL, -- Name of the stock account
    conta_da_receita VARCHAR(20) NULL, -- Revenue account
    nome_da_conta_da_receita VARCHAR(40) NULL, -- Name of the revenue account
    vendedor_01 VARCHAR(6) NULL, -- Seller 01
    nome_do_vendedor_01 VARCHAR(40) NULL, -- Name of seller 01
    vendedor_02 VARCHAR(6) NULL, -- Seller 02
    nome_do_vendedor_02 VARCHAR(40) NULL, -- Name of seller 02
    vendedor_03 VARCHAR(6) NULL, -- Seller 03
    nome_do_vendedor_03 VARCHAR(40) NULL, -- Name of seller 03
    vendedor_04 VARCHAR(6) NULL, -- Seller 04
    nome_do_vendedor_04 VARCHAR(40) NULL, -- Name of seller 04
    vendedor_05 VARCHAR(6) NULL, -- Seller 05
    nome_do_vendedor_05 VARCHAR(40) NULL, -- Name of seller 05
    peso_bruto FLOAT NULL, -- Gross weight
    peso_liquido FLOAT NULL, -- Net weight
    conferencia_bi_ok VARCHAR(1) NULL, -- BI conference OK
    venda_intercompany VARCHAR(1) NOT NULL, -- Intercompany sale
    CNPJ VARCHAR(14) NOT NULL, -- CNPJ
    codigo_do_grupo_sintetico VARCHAR(2) NOT NULL, -- Synthetic group code
    nome_do_grupo_sintetico VARCHAR(55) NULL, -- Name of the synthetic group
    codigo_do_grupo_analitico VARCHAR(2) NOT NULL, -- Analytical group code
    nome_do_grupo_analitico VARCHAR(55) NULL, -- Name of the analytical group
    codigo_da_moeda VARCHAR(2) NULL, -- Currency code
    nome_da_moeda VARCHAR(10) NULL, -- Currency name
    peso_teorico_unitario FLOAT NOT NULL, -- Theoretical unit weight
    peso_teorico_kilos FLOAT NULL, -- Theoretical kilos weight
    taxa FLOAT NULL -- Rate
) ON [DATA]
GO
