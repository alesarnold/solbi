-- seleciona o master
use master;
go

-- Passo 1: Criar o login para o usuário no servidor SQL
CREATE LOGIN solbi_gateway
WITH PASSWORD = 'I9$TfWCv$cmZBcT';
GO

-- Passo 2: Criar o usuário no banco de dados datamart
USE datamart;
GO

CREATE USER solbi_gateway FOR LOGIN solbi_gateway;
GO

-- Passo 3: Atribuir a role db_datareader para permitir leitura no banco de dados datamart
EXEC sp_addrolemember N'db_datareader', N'solbi_gateway';
GO

-- Passo 4: Garantir que o usuário tenha permissão de conexão ao banco de dados datamart
GRANT CONNECT TO solbi_gateway;
GO

-- Passo 5: Impedir que o usuário veja outros bancos de dados no servidor
DENY VIEW ANY DATABASE TO solbi_gateway;
GO
