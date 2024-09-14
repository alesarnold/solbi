-- seleciona o master
use master;
go

-- Passo 1: Criar o login para o usu�rio no servidor SQL
CREATE LOGIN solbi_gateway
WITH PASSWORD = 'I9$TfWCv$cmZBcT';
GO

-- Passo 2: Criar o usu�rio no banco de dados datamart
USE datamart;
GO

CREATE USER solbi_gateway FOR LOGIN solbi_gateway;
GO

-- Passo 3: Atribuir a role db_datareader para permitir leitura no banco de dados datamart
EXEC sp_addrolemember N'db_datareader', N'solbi_gateway';
GO

-- Passo 4: Garantir que o usu�rio tenha permiss�o de conex�o ao banco de dados datamart
GRANT CONNECT TO solbi_gateway;
GO

-- Passo 5: Impedir que o usu�rio veja outros bancos de dados no servidor
DENY VIEW ANY DATABASE TO solbi_gateway;
GO
