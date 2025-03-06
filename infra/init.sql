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
        TipoServico VARCHAR(50),
        NotaFiscalId INT,
        ServicoNumero INT,
        AberturaDataHora DATETIME,
        DataLimiteRetorno DATETIME,
        Placa VARCHAR(10),
        Chassi VARCHAR(50),
        ChassiRemarcado BIT,
        ClienteId VARCHAR(50),
        ProprietarioId VARCHAR(50),
        CondutorId VARCHAR(50),
        CaracteristicaAnteriorId VARCHAR(50),
        CaracteristicaAtualId VARCHAR(50),
        CaracteristicaSubstituidaId VARCHAR(50),
        CaracteristicaCrlvId VARCHAR(50),
        AprovouDivergenciasBin BIT,
        AprovouDivergenciasUsuarioId VARCHAR(50),
        AprovouDivergenciasUsuarioNome VARCHAR(100),
        AprovouDivergenciasDataHora DATETIME,
        Observacoes TEXT,
        TipoCsvId INT,
        TipoCsvNome VARCHAR(50),
        TipoCsvSerproId INT,
        TipoCsvSerproNome VARCHAR(50),
        RequerAutorizacao BIT,
        AutorizacaoNumero VARCHAR(50),
        AutorizacaoDescricao TEXT,
        AutorizacaoDataVencimento DATETIME,
        PortariaId INT,
        Prisma INT,
        AnaliseGases BIT,
        Status INT,
        IndicacaoId VARCHAR(50),
        ValorServico DECIMAL(10,2),
        EmitirNotaFiscalLaudos BIT,
        OrdemServicoEmitidoUsuarioId VARCHAR(50),
        OrdemServicoEmitidoUsuarioNome VARCHAR(100),
        OrdemServicoEmitidoDataHora DATETIME,
        CsvEmitidoUsuarioId VARCHAR(50),
        CsvEmitidoUsuarioNome VARCHAR(100),
        CsvEmitidoDataHora DATETIME,
        SeloEmitidoUsuarioId VARCHAR(50),
        SeloEmitidoUsuarioNome VARCHAR(100),
        SeloEmitidoDataHora DATETIME,
        CanceladoMotivo TEXT,
        CanceladoDataHora DATETIME,
        CanceladoPor VARCHAR(100),
        TipoLaudoId INT,
        TipoLaudoNome VARCHAR(50),
        SubGrupoId INT,
        UtilizarFotoManualCertificado BIT,
        UtilizarFotoManualAntt BIT
    );
END;
GO

INSERT INTO dbo.serviconumerico (
    Id, TipoServico, NotaFiscalId, ServicoNumero, AberturaDataHora, DataLimiteRetorno, Placa, Chassi, 
    ChassiRemarcado, ClienteId, ProprietarioId, CondutorId, CaracteristicaAnteriorId, CaracteristicaAtualId, 
    CaracteristicaSubstituidaId, CaracteristicaCrlvId, AprovouDivergenciasBin, AprovouDivergenciasUsuarioId, 
    AprovouDivergenciasUsuarioNome, AprovouDivergenciasDataHora, Observacoes, TipoCsvId, TipoCsvNome, 
    TipoCsvSerproId, TipoCsvSerproNome, RequerAutorizacao, AutorizacaoNumero, AutorizacaoDescricao, 
    AutorizacaoDataVencimento, PortariaId, Prisma, AnaliseGases, Status, IndicacaoId, ValorServico, 
    EmitirNotaFiscalLaudos, OrdemServicoEmitidoUsuarioId, OrdemServicoEmitidoUsuarioNome, 
    OrdemServicoEmitidoDataHora, CsvEmitidoUsuarioId, CsvEmitidoUsuarioNome, CsvEmitidoDataHora, 
    SeloEmitidoUsuarioId, SeloEmitidoUsuarioNome, SeloEmitidoDataHora, CanceladoMotivo, CanceladoDataHora, 
    CanceladoPor, TipoLaudoId, TipoLaudoNome, SubGrupoId, UtilizarFotoManualCertificado, 
    UtilizarFotoManualAntt)
VALUES 
    (16264, 'SR', 18527, 4280, '2025-03-05 10:03:43.547', '2025-04-04 23:59:59.000', 'ORR9A72', '8AJYY59G3D6508747', 
     0, '2C7E91F7-9D51-4E8D-A5F8-CA79A0A44605', '284E27B9-ABAB-4448-A2F7-A659AA5C9837', '2C7E91F7-9D51-4E8D-A5F8-CA79A0A44605', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 0, '', 0, 'SINISTRADO', 0, NULL, '', NULL, 21, 2, 0, 1, NULL, 0.01, 1, 
     NULL, '', NULL, '5F06E303-93F0-4F9F-A8E2-C770A8E1D6C2', 'Administrador', '2025-03-05 12:15:29.273', NULL, '', NULL, '', NULL, '', 
     0, '', 0, 0, 0),
    (16265, 'SR', 18528, 4281, '2025-03-06 11:15:30.123', '2025-04-06 23:59:59.000', 'XYZ1234', '9KLMY59G3D6508748', 
     1, '3D8E91F7-8D51-4E8D-A5F8-CA79A0A44606', '394E27B9-ABAB-4448-A2F7-A659AA5C9838', '3D8E91F7-8D51-4E8D-A5F8-CA79A0A44606', 
     NULL, NULL, NULL, NULL, 1, NULL, 'José da Silva', NULL, 'Sem observações', 1, 'Tipo X', 1, 'SINISTRADO', 1, NULL, 'Descrição teste', 
     NULL, 22, 3, 1, 2, NULL, 50.00, 1, NULL, '', NULL, '6G07E303-93F0-4F9F-A8E2-C770A8E1D6D3', 'Gestor', '2025-03-06 13:20:45.456', NULL, 
     '', NULL, 'Motivo cancelamento', NULL, 'Supervisor', 1, 'Laudo Y', 1, 1, 0),

    (16266, 'SR', 18527, 4280, '2025-03-05 10:03:43.547', '2025-04-04 23:59:59.000', 'ORR9A72', '8AJYY59G3D6508747', 
     0, '2C7E91F7-9D51-4E8D-A5F8-CA79A0A44605', '284E27B9-ABAB-4448-A2F7-A659AA5C9837', '2C7E91F7-9D51-4E8D-A5F8-CA79A0A44605', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 0, '', 0, 'SINISTRADO', 0, NULL, '', NULL, 21, 2, 0, 1, NULL, 0.01, 1, 
     NULL, '', NULL, '5F06E303-93F0-4F9F-A8E2-C770A8E1D6C2', 'Administrador', '2025-03-05 12:15:29.273', NULL, '', NULL, '', NULL, '', 
     0, '', 0, 0, 0),   
     
     
    (16267, 'SR', 18528, 4281, '2025-03-06 11:15:30.123', '2025-04-06 23:59:59.000', 'XYZ1234', '9KLMY59G3D6508748', 
     1, '3D8E91F7-8D51-4E8D-A5F8-CA79A0A44606', '394E27B9-ABAB-4448-A2F7-A659AA5C9838', '3D8E91F7-8D51-4E8D-A5F8-CA79A0A44606', 
     NULL, NULL, NULL, NULL, 1, NULL, 'José da Silva', NULL, 'Sem observações', 1, 'Tipo X', 1, 'SINISTRADO', 1, NULL, 'Descrição teste', 
     NULL, 22, 3, 1, 2, NULL, 50.00, 1, NULL, '', NULL, '6G07E303-93F0-4F9F-A8E2-C770A8E1D6D3', 'Gestor', '2025-03-06 13:20:45.456', NULL, 
     '', NULL, 'Motivo cancelamento', NULL, 'Supervisor', 1, 'Laudo Y', 1, 1, 0);



     /*
    (16268, 'SR', 18529, 4282, '2025-03-07 09:10:25.321', '2025-04-07 23:59:59.000', 'AAA1111', '0XLMY59G3D6508749', 
     0, '4D9F91F7-9D51-4E8D-A5F8-CA79A0A44607', '4E4E27B9-ABAB-4448-A2F7-A659AA5C9839', '4D9F91F7-9D51-4E8D-A5F8-CA79A0A44607', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 0, '', 0, 'SINISTRADO', 0, NULL, '', NULL, 23, 3, 0, 1, NULL, 0.05, 1, 
     NULL, '', NULL, '7F06E303-93F0-4F9F-A8E2-C770A8E1D6C4', 'Administrador', '2025-03-07 14:30:11.321', NULL, '', NULL, '', NULL, '', 
     0, '', 0, 0, 0),
    (16269, 'SR', 18530, 4283, '2025-03-08 14:12:40.544', '2025-04-08 23:59:59.000', 'BBB2222', '1YLMY59G3D6508750', 
     1, '5D9F91F7-9D51-4E8D-A5F8-CA79A0A44608', '5E4E27B9-ABAB-4448-A2F7-A659AA5C9840', '5D9F91F7-9D51-4E8D-A5F8-CA79A0A44608', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 0, '', 0, 'SINISTRADO', 1, NULL, '', NULL, 24, 4, 0, 1, NULL, 0.10, 1, 
     NULL, '', NULL, '8F06E303-93F0-4F9F-A8E2-C770A8E1D6C5', 'Gestor', '2025-03-08 15:35:54.654', NULL, '', NULL, '', NULL, '', 
     1, '', 0, 0, 1),
    (16270, 'SR', 18531, 4284, '2025-03-09 12:45:50.324', '2025-04-09 23:59:59.000', 'CCC3333', '2YLMY59G3D6508751', 
     1, '6D9F91F7-9D51-4E8D-A5F8-CA79A0A44609', '6E4E27B9-ABAB-4448-A2F7-A659AA5C9841', '6D9F91F7-9D51-4E8D-A5F8-CA79A0A44609', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 0, '', 0, 'SINISTRADO', 1, NULL, '', NULL, 25, 5, 0, 2, NULL, 0.15, 0, 
     NULL, '', NULL, '9F06E303-93F0-4F9F-A8E2-C770A8E1D6C6', 'Administrador', '2025-03-09 13:56:07.432', NULL, '', NULL, '', NULL, '', 
     1, '', 0, 0, 0),
    (16271, 'SR', 18532, 4285, '2025-03-10 16:30:21.213', '2025-04-10 23:59:59.000', 'DDD4444', '3YLMY59G3D6508752', 
     0, '7D9F91F7-9D51-4E8D-A5F8-CA79A0A44610', '7E4E27B9-ABAB-4448-A2F7-A659AA5C9842', '7D9F91F7-9D51-4E8D-A5F8-CA79A0A44610', 
     NULL, NULL, NULL, NULL, 1, NULL, '', NULL, 'SINISTRADO', 0, '', 1, 'SINISTRADO', 1, NULL, '', NULL, 26, 6, 1, 2, NULL, 0.20, 1, 
     NULL, '', NULL, 'AF06E303-93F0-4F9F-A8E2-C770A8E1D6C7', 'Gestor', '2025-03-10 17:10:14.543', NULL, '', NULL, '', NULL, '', 
     1, '', 1, 1, 1),
    (16272, 'SR', 18533, 4286, '2025-03-11 13:15:02.543', '2025-04-11 23:59:59.000', 'EEE5555', '4YLMY59G3D6508753', 
     0, '8D9F91F7-9D51-4E8D-A5F8-CA79A0A44611', '8E4E27B9-ABAB-4448-A2F7-A659AA5C9843', '8D9F91F7-9D51-4E8D-A5F8-CA79A0A44611', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 1, '', 0, 'SINISTRADO', 1, NULL, '', NULL, 27, 7, 1, 2, NULL, 0.25, 0, 
     NULL, '', NULL, 'BF06E303-93F0-4F9F-A8E2-C770A8E1D6C8', 'Administrador', '2025-03-11 14:35:25.213', NULL, '', NULL, '', NULL, '', 
     0, '', 1, 1, 0),
    (16273, 'SR', 18534, 4287, '2025-03-12 14:45:23.654', '2025-04-12 23:59:59.000', 'FFF6666', '5YLMY59G3D6508754', 
     1, '9D9F91F7-9D51-4E8D-A5F8-CA79A0A44612', '9E4E27B9-ABAB-4448-A2F7-A659AA5C9844', '9D9F91F7-9D51-4E8D-A5F8-CA79A0A44612', 
     NULL, NULL, NULL, NULL, 0, NULL, '', NULL, 'SINISTRADO', 1, '', 1, 'SINISTRADO', 0, NULL, '', NULL, 28, 8, 0, 2, NULL, 0.30, 1, 
     NULL, '', NULL, 'CF06E303-93F0-4F9F-A8E2-C770A8E1D6C9', 'Gestor', '2025-03-12 15:22:14.654', NULL, '', NULL, '', NULL, '', 
     1, '', 0, 1, 1)*/