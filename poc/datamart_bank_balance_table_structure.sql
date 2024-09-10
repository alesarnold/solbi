CREATE TABLE [dbo].[etl_solbi_saldos_bancarios](
    [empresa_que_possui_saldo] [varchar](6) NULL, -- Company that has the balance
    [nome_da_empresa_que_possui_saldo] [varchar](60) NOT NULL, -- Name of the company that has the balance
    [codigo_do_banco_que_tem_saldo] [varchar](3) NOT NULL, -- Code of the bank that holds the balance
    [agencia_do_banco_que_tem_saldo] [varchar](5) NOT NULL, -- Branch of the bank that holds the balance
    [conta_do_banco_que_tem_saldo] [varchar](10) NOT NULL, -- Account of the bank that holds the balance
    [nome__do_banco_que_tem_saldo] [varchar](40) NOT NULL, -- Name of the bank that holds the balance
    [data_do_saldo_no_banco] [varchar](30) NULL, -- Date of the balance in the bank
    [saldo_em_conta_no_dia_no_banco] [float] NOT NULL -- Balance in the account on the day
) ON [DATA]
GO
