IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'vehicle_inspection_status')
BEGIN
    CREATE DATABASE vehicle_inspection_status;
END;
GO  


USE vehicle_inspection_status;
GO 


IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='serviconumerico' AND xtype='U')
BEGIN
    CREATE TABLE dbo.serviconumerico (
        Id INT PRIMARY KEY,
        TipoServico VARCHAR(30),
        NotaFiscalId VARCHAR(50),
        Placa VARCHAR(10),
        Chassi VARCHAR(50),
        CondutorId VARCHAR(50),
        CaracteristicaAnteriorId VARCHAR(50),
        CaracteristicaAtualId VARCHAR(50),
        AprovouDivergenciasUsuarioId VARCHAR(50),
        AutorizacaoDescricao TEXT,
        ServicoNumero INT,
        AberturaDataHora DATETIME,
        ChassiRemarcado BIT,
        ClienteId VARCHAR(50),
        CaracteristicaSubstituidaId VARCHAR(50),
        CaracteristicaCrvId VARCHAR(50),
        AprovouDivergenciasDataHora DATETIME,
        Observacoes TEXT,
        PortariaId INT,
        Prisma INT,
        AnaliseGases VARCHAR(50),
        OrdemServicoEmitidoUsuarioId VARCHAR(50),
        SeloEmitidoUsuarioId VARCHAR(50),
        LaudoEmitidoUsuarioNome TEXT,
        CanceladoDataHora DATETIME,
        CanceladoPor TEXT,
        SubGrupoId INT,
        UtilizarFotoManualCentral BIT
    );
END;
GO

-- Inserção de 4 linhas fictícias na tabela 'serviconumerico'
INSERT INTO dbo.serviconumerico (
    Id, TipoServico, NotaFiscalId, Placa, Chassi, CondutorId, CaracteristicaAnteriorId, CaracteristicaAtualId,
    AprovouDivergenciasUsuarioId, AutorizacaoDescricao, ServicoNumero, AberturaDataHora, ChassiRemarcado, ClienteId,
    CaracteristicaSubstituidaId, CaracteristicaCrvId, AprovouDivergenciasDataHora, Observacoes, PortariaId, Prisma,
    AnaliseGases, OrdemServicoEmitidoUsuarioId, SeloEmitidoUsuarioId, LaudoEmitidoUsuarioNome, CanceladoDataHora,
    CanceladoPor, SubGrupoId, UtilizarFotoManualCentral
)
VALUES 
    (1, 'Reparo', 'NF123456', 'ABC1234', '1HGBH41JXMN109186', 'COND001', 'CARACTER1', 'CARACTER2', 'USR001', 
     'Autorização concedida', 101, '2025-01-01 08:00:00', 0, 'CLI001', 'CARACTER3', 'CARACTER4', '2025-01-01 09:00:00',
     'Observações iniciais', 1, 5, 'Gases analisados', 'USR002', 'USR003', 'João da Silva', '2025-01-01 10:00:00', 
     'Administrador', 1, 1),

    (2, 'Troca de Peças', 'NF123457', 'DEF5678', '2HGBH41JXMN109187', 'COND002', 'CARACTER5', 'CARACTER6', 'USR002', 
     'Autorização pendente', 102, '2025-01-02 09:00:00', 1, 'CLI002', 'CARACTER7', 'CARACTER8', '2025-01-02 10:00:00',
     'Observações complementares', 2, 6, 'Gases não analisados', 'USR004', 'USR005', 'Maria Oliveira', NULL, 
     NULL, 2, 0),

    (3, 'Inspeção', 'NF123458', 'GHI9101', '3HGBH41JXMN109188', 'COND003', 'CARACTER9', 'CARACTER10', 'USR003', 
     'Autorização em análise', 103, '2025-01-03 10:00:00', 0, 'CLI003', 'CARACTER11', 'CARACTER12', '2025-01-03 11:00:00',
     'Nenhuma observação', 3, 7, 'Gases não analisados', 'USR006', 'USR007', 'Carlos Pereira', NULL, 
     NULL, 3, 1),

    (4, 'Revisão', 'NF123459', 'JKL1122', '4HGBH41JXMN109189', 'COND004', 'CARACTER13', 'CARACTER14', 'USR004', 
     'Autorização recusada', 104, '2025-01-04 11:00:00', 1, 'CLI004', 'CARACTER15', 'CARACTER16', '2025-01-04 12:00:00',
     'Revisão do sistema', 4, 8, 'Gases analisados', 'USR008', 'USR009', 'Ana Silva', '2025-01-04 13:00:00', 
     'Gerente', 4, 0);
     
GO


--/bin/bash -c "/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P 'Local_password123' -i init.sql -N -C"
--SELECT name FROM sys.databases;
--SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';
--docker exec -it mssql_server bin/bash
--use vehicle_inspection_status;
--/opt/mssql/bin/sqlservr