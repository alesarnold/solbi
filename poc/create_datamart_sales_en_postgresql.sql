CREATE TABLE datamart_sales_en (
    uuid UUID,  -- 'uniqueidentifier' in MSSQL is converted to 'UUID' in PostgreSQL
    sale_or_product_return_movement_type VARCHAR(10) NOT NULL,
    branch_that_sold_the_product VARCHAR(6) NOT NULL,
    name_of_the_branch_that_sold_the_product VARCHAR(41) NOT NULL,
    expected_delivery_date DATE,
    sale_issue_date DATE,
    accounting_date DATE,
    sales_invoice_number VARCHAR(9) NOT NULL,
    exit_series INTEGER,
    economic_group VARCHAR(6) NOT NULL,
    economic_group_name VARCHAR(40),
    client_who_bought_the_product VARCHAR(9) NOT NULL,
    client_store VARCHAR(4) NOT NULL,
    client_name VARCHAR(40) NOT NULL,
    client_city VARCHAR(60) NOT NULL,
    client_state VARCHAR(2) NOT NULL,
    client_country_code VARCHAR(5) NOT NULL,
    client_country_name VARCHAR(50) NOT NULL,
    sold_product VARCHAR(15) NOT NULL,
    sold_product_name VARCHAR(50) NOT NULL,
    sold_product_type VARCHAR(2) NOT NULL,
    sold_product_type_name VARCHAR(55) NOT NULL,
    product_group VARCHAR(4) NOT NULL,
    product_group_name VARCHAR(50) NOT NULL,
    quantity_sold DOUBLE PRECISION NOT NULL,  -- 'float' in MSSQL is converted to 'DOUBLE PRECISION' in PostgreSQL
    unit_price DOUBLE PRECISION NOT NULL,     -- 'float' in MSSQL is converted to 'DOUBLE PRECISION' in PostgreSQL
    total_value DOUBLE PRECISION NOT NULL,    -- 'float' in MSSQL is converted to 'DOUBLE PRECISION' in PostgreSQL
    ipi_base DOUBLE PRECISION NOT NULL,
    ipi_rate DOUBLE PRECISION NOT NULL,
    ipi_value DOUBLE PRECISION NOT NULL,
    icm_base DOUBLE PRECISION NOT NULL,
    icm_rate DOUBLE PRECISION NOT NULL,
    icm_value DOUBLE PRECISION NOT NULL,
    cofins_base DOUBLE PRECISION NOT NULL,
    cofins_rate DOUBLE PRECISION NOT NULL,
    cofins_value DOUBLE PRECISION NOT NULL,
    pis_base DOUBLE PRECISION NOT NULL,
    pis_rate DOUBLE PRECISION NOT NULL,
    pis_value DOUBLE PRECISION NOT NULL,
    freight_value DOUBLE PRECISION NOT NULL,
    insurance_value DOUBLE PRECISION NOT NULL,
    cost DOUBLE PRECISION NOT NULL,
    sales_order VARCHAR(7),
    sales_order_item VARCHAR(3),
    tes VARCHAR(3) NOT NULL,
    cfop VARCHAR(5) NOT NULL,
    cfop_text VARCHAR(61) NOT NULL,
    tes_generates_duplicate VARCHAR(1) NOT NULL,
    tes_moves_stock VARCHAR(1) NOT NULL,
    stock_account VARCHAR(20) NOT NULL,
    stock_account_name VARCHAR(40),
    revenue_account VARCHAR(20),
    revenue_account_name VARCHAR(40),
    seller_01 VARCHAR(6),
    seller_01_name VARCHAR(40),
    seller_02 VARCHAR(6),
    seller_02_name VARCHAR(40),
    seller_03 VARCHAR(6),
    seller_03_name VARCHAR(40),
    seller_04 VARCHAR(6),
    seller_04_name VARCHAR(40),
    seller_05 VARCHAR(6),
    seller_05_name VARCHAR(40),
    gross_weight DOUBLE PRECISION,
    net_weight DOUBLE PRECISION,
    bi_conference_ok VARCHAR(1),
    intercompany_sale VARCHAR(1) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    synthetic_group_code VARCHAR(2) NOT NULL,
    synthetic_group_name VARCHAR(55),
    analytical_group_code VARCHAR(2) NOT NULL,
    analytical_group_name VARCHAR(55),
    currency_code VARCHAR(2),
    currency_name VARCHAR(10),
    theoretical_unit_weight DOUBLE PRECISION NOT NULL,
    theoretical_weight_in_kilos DOUBLE PRECISION,
    rate DOUBLE PRECISION,
    insertion_date_utc TIMESTAMP  -- 'datetime' in MSSQL is converted to 'TIMESTAMP' in PostgreSQL
);