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
     '', NULL, 'Motivo cancelamento', NULL, 'Supervisor', 1, 'Laudo Y', 1, 1, 0);
