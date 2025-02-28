IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'vehicle_inspection_status')
BEGIN
    CREATE DATABASE vehicle_inspection_status;
END;
GO  

USE vehicle_inspection_status;
GO 

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='usuarios' AND xtype='U')
BEGIN
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY, 
        nome VARCHAR(100) NOT NULL, 
        email VARCHAR(150) UNIQUE NOT NULL, 
        senha_hash VARCHAR(255) NOT NULL, 
        data_criacao DATETIME DEFAULT GETDATE()
    );
END;
GO

INSERT INTO usuarios (nome, email, senha_hash) 
VALUES 
    ('João Silva', 'joao@email.com', 'hash_da_senha'),
    ('Maria Souza', 'maria@email.com', 'hash_da_senha');
GO

--/bin/bash -c "/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'Local_password123' -i init.sql -N -C"
--SELECT name FROM sys.databases;
--SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';
--docker exec -it mssql_server bin/bash
--use vehicle_inspection_status;
--/opt/mssql/bin/sqlservr

