CREATE TABLE production_order (
    empresa_que_produziu VARCHAR(4) NOT NULL, -- Company that produced the item
    filial_que_produziu VARCHAR(6) NOT NULL, -- Branch that produced the item
    nome_da_filial_que_produziu VARCHAR(41) NOT NULL, -- Name of the branch that produced the item
    cidade_da_filial_que_produziu VARCHAR(60) NOT NULL, -- City of the branch that produced the item
    estado_da_filial_que_produziu VARCHAR(2) NOT NULL, -- State of the branch that produced the item
    pais_da_filial_que_produziu VARCHAR(6) NOT NULL, -- Country of the branch that produced the item
    numero_da_ordem_de_producao VARCHAR(6) NOT NULL, -- Production order number
    codigo_do_produto_produzido VARCHAR(15) NOT NULL, -- Code of the produced product
    nome_do_produto_produzido VARCHAR(50) NOT NULL, -- Name of the produced product
    grupo_do_produto_produzido VARCHAR(4) NOT NULL, -- Group of the produced product
    nome_do_grupo_do_produto_produzido VARCHAR(50) NOT NULL, -- Name of the group of the produced product
    data_inclusao_ordem_de_producao DATE NOT NULL, -- Date the production order was added
    data_da_entrega_da_ordem_de_producao DATE NOT NULL, -- Delivery date of the production order
    semana_do_ano_da_ordem_de_producao INT NOT NULL, -- Week of the year of the production order
    quantidade_da_ordem_de_producao FLOAT NOT NULL, -- Quantity of the production order
    quantidade_da_ordem_de_produção_ja_produzida FLOAT NOT NULL, -- Quantity already produced
    quantidade_da_ordem_de_producao_que_falta_produzir FLOAT NOT NULL, -- Quantity yet to be produced
    situacao_da_ordem_de_producao VARCHAR(21) NOT NULL, -- Status of the production order
    dias_ociosidade INT NOT NULL, -- Days of idle time
    data_do_primeiro_apontamento_de_producao DATE NOT NULL, -- Date of the first production entry
    data_do_ultimo_apontamento_de_producao DATE NOT NULL -- Date of the last production entry
);
