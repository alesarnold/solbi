CREATE OR ALTER VIEW datamart_bank_balance_en 
as
SELECT 
    EMPRESA AS company_code, -- Código da empresa
    NM_EMPRESA AS company_name, -- Nome da empresa
    BANCO AS bank_code, -- Código do banco
    BANCO_AGENCIA AS bank_agency, -- Agência bancária
    BANCO_CONTA AS bank_account, -- Conta bancária
    NM_BANCO AS bank_name, -- Nome do banco
    DT_SALDO AS balance_date, -- Data do saldo
    SALDO_FINAL_DIA AS end_of_day_balance, -- Saldo final do dia
    CD_CONTA_CONTABIL AS accounting_account_code, -- Código da conta contábil
    NM_CONTA_CONTABIL AS accounting_account_name -- Nome da conta contábil
FROM 
    [dbo].[BI_FIN_FATO_SALDO_BANCOS]