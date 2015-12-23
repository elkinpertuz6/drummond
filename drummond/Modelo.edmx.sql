
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/23/2015 15:11:23
-- Generated from EDMX file: C:\Users\Franklin\Documents\GitHub\drummond\drummond\Modelo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Drummond01];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SedeDepartamentoSede]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartamentoSedeSet] DROP CONSTRAINT [FK_SedeDepartamentoSede];
GO
IF OBJECT_ID(N'[dbo].[FK_departamentoDepartamentoSede]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartamentoSedeSet] DROP CONSTRAINT [FK_departamentoDepartamentoSede];
GO
IF OBJECT_ID(N'[dbo].[FK_departamentoDepartamentoArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartamentoAreaSet] DROP CONSTRAINT [FK_departamentoDepartamentoArea];
GO
IF OBJECT_ID(N'[dbo].[FK_AreaDepartamentoArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartamentoAreaSet] DROP CONSTRAINT [FK_AreaDepartamentoArea];
GO
IF OBJECT_ID(N'[dbo].[FK_AreaGrupoArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GrupoAreas] DROP CONSTRAINT [FK_AreaGrupoArea];
GO
IF OBJECT_ID(N'[dbo].[FK_GrupoGrupoArea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[GrupoAreas] DROP CONSTRAINT [FK_GrupoGrupoArea];
GO
IF OBJECT_ID(N'[dbo].[FK_AreaAreaSubarea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AreaSubareas] DROP CONSTRAINT [FK_AreaAreaSubarea];
GO
IF OBJECT_ID(N'[dbo].[FK_SubareaAreaSubarea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AreaSubareas] DROP CONSTRAINT [FK_SubareaAreaSubarea];
GO
IF OBJECT_ID(N'[dbo].[FK_GrupoAreaEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_GrupoAreaEmpleados];
GO
IF OBJECT_ID(N'[dbo].[FK_GrupoSubarea]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubareaSet] DROP CONSTRAINT [FK_GrupoSubarea];
GO
IF OBJECT_ID(N'[dbo].[FK_CargosEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosSet] DROP CONSTRAINT [FK_CargosEmpleados];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Areas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Areas];
GO
IF OBJECT_ID(N'[dbo].[CargosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CargosSet];
GO
IF OBJECT_ID(N'[dbo].[EmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosSet];
GO
IF OBJECT_ID(N'[dbo].[departamentoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[departamentoSet];
GO
IF OBJECT_ID(N'[dbo].[SedeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SedeSet];
GO
IF OBJECT_ID(N'[dbo].[SubareaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubareaSet];
GO
IF OBJECT_ID(N'[dbo].[GrupoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GrupoSet];
GO
IF OBJECT_ID(N'[dbo].[DepartamentoAreaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartamentoAreaSet];
GO
IF OBJECT_ID(N'[dbo].[DepartamentoSedeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartamentoSedeSet];
GO
IF OBJECT_ID(N'[dbo].[AreaSubareas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AreaSubareas];
GO
IF OBJECT_ID(N'[dbo].[GrupoAreas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[GrupoAreas];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Areas'
CREATE TABLE [dbo].[Areas] (
    [Cod] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosSet'
CREATE TABLE [dbo].[CargosSet] (
    [Cod] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [jefe] int  NOT NULL,
    [tipo_de_area] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmpleadosSet'
CREATE TABLE [dbo].[EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GrupoAreaIdGrupoArea] int  NOT NULL,
    [CargosCod] int  NOT NULL,
    [Nit] int  NOT NULL,
    [nombres] nvarchar(max)  NOT NULL,
    [apellidos] nvarchar(max)  NOT NULL,
    [Lider] bit  NOT NULL,
    [JefeCod] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'departamentoSet'
CREATE TABLE [dbo].[departamentoSet] (
    [Cod] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SedeSet'
CREATE TABLE [dbo].[SedeSet] (
    [Cod] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SubareaSet'
CREATE TABLE [dbo].[SubareaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [GrupoId] int  NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'GrupoSet'
CREATE TABLE [dbo].[GrupoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DepartamentoAreaSet'
CREATE TABLE [dbo].[DepartamentoAreaSet] (
    [IdDepArea] int IDENTITY(1,1) NOT NULL,
    [departamentoId] int  NOT NULL,
    [AreaCod] int  NOT NULL
);
GO

-- Creating table 'DepartamentoSedeSet'
CREATE TABLE [dbo].[DepartamentoSedeSet] (
    [IdDepSede] int IDENTITY(1,1) NOT NULL,
    [SedeId] int  NOT NULL,
    [departamentoId] int  NOT NULL
);
GO

-- Creating table 'AreaSubareas'
CREATE TABLE [dbo].[AreaSubareas] (
    [IdAreaSubarea] int IDENTITY(1,1) NOT NULL,
    [AreaCod] int  NOT NULL,
    [SubareaId] int  NOT NULL
);
GO

-- Creating table 'GrupoAreas'
CREATE TABLE [dbo].[GrupoAreas] (
    [IdGrupoArea] int IDENTITY(1,1) NOT NULL,
    [AreaCod] int  NOT NULL,
    [GrupoId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Cod] in table 'Areas'
ALTER TABLE [dbo].[Areas]
ADD CONSTRAINT [PK_Areas]
    PRIMARY KEY CLUSTERED ([Cod] ASC);
GO

-- Creating primary key on [Cod] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Cod] ASC);
GO

-- Creating primary key on [Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [PK_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Cod] in table 'departamentoSet'
ALTER TABLE [dbo].[departamentoSet]
ADD CONSTRAINT [PK_departamentoSet]
    PRIMARY KEY CLUSTERED ([Cod] ASC);
GO

-- Creating primary key on [Cod] in table 'SedeSet'
ALTER TABLE [dbo].[SedeSet]
ADD CONSTRAINT [PK_SedeSet]
    PRIMARY KEY CLUSTERED ([Cod] ASC);
GO

-- Creating primary key on [Id] in table 'SubareaSet'
ALTER TABLE [dbo].[SubareaSet]
ADD CONSTRAINT [PK_SubareaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'GrupoSet'
ALTER TABLE [dbo].[GrupoSet]
ADD CONSTRAINT [PK_GrupoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdDepArea] in table 'DepartamentoAreaSet'
ALTER TABLE [dbo].[DepartamentoAreaSet]
ADD CONSTRAINT [PK_DepartamentoAreaSet]
    PRIMARY KEY CLUSTERED ([IdDepArea] ASC);
GO

-- Creating primary key on [IdDepSede] in table 'DepartamentoSedeSet'
ALTER TABLE [dbo].[DepartamentoSedeSet]
ADD CONSTRAINT [PK_DepartamentoSedeSet]
    PRIMARY KEY CLUSTERED ([IdDepSede] ASC);
GO

-- Creating primary key on [IdAreaSubarea] in table 'AreaSubareas'
ALTER TABLE [dbo].[AreaSubareas]
ADD CONSTRAINT [PK_AreaSubareas]
    PRIMARY KEY CLUSTERED ([IdAreaSubarea] ASC);
GO

-- Creating primary key on [IdGrupoArea] in table 'GrupoAreas'
ALTER TABLE [dbo].[GrupoAreas]
ADD CONSTRAINT [PK_GrupoAreas]
    PRIMARY KEY CLUSTERED ([IdGrupoArea] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SedeId] in table 'DepartamentoSedeSet'
ALTER TABLE [dbo].[DepartamentoSedeSet]
ADD CONSTRAINT [FK_SedeDepartamentoSede]
    FOREIGN KEY ([SedeId])
    REFERENCES [dbo].[SedeSet]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SedeDepartamentoSede'
CREATE INDEX [IX_FK_SedeDepartamentoSede]
ON [dbo].[DepartamentoSedeSet]
    ([SedeId]);
GO

-- Creating foreign key on [departamentoId] in table 'DepartamentoSedeSet'
ALTER TABLE [dbo].[DepartamentoSedeSet]
ADD CONSTRAINT [FK_departamentoDepartamentoSede]
    FOREIGN KEY ([departamentoId])
    REFERENCES [dbo].[departamentoSet]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_departamentoDepartamentoSede'
CREATE INDEX [IX_FK_departamentoDepartamentoSede]
ON [dbo].[DepartamentoSedeSet]
    ([departamentoId]);
GO

-- Creating foreign key on [departamentoId] in table 'DepartamentoAreaSet'
ALTER TABLE [dbo].[DepartamentoAreaSet]
ADD CONSTRAINT [FK_departamentoDepartamentoArea]
    FOREIGN KEY ([departamentoId])
    REFERENCES [dbo].[departamentoSet]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_departamentoDepartamentoArea'
CREATE INDEX [IX_FK_departamentoDepartamentoArea]
ON [dbo].[DepartamentoAreaSet]
    ([departamentoId]);
GO

-- Creating foreign key on [AreaCod] in table 'DepartamentoAreaSet'
ALTER TABLE [dbo].[DepartamentoAreaSet]
ADD CONSTRAINT [FK_AreaDepartamentoArea]
    FOREIGN KEY ([AreaCod])
    REFERENCES [dbo].[Areas]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AreaDepartamentoArea'
CREATE INDEX [IX_FK_AreaDepartamentoArea]
ON [dbo].[DepartamentoAreaSet]
    ([AreaCod]);
GO

-- Creating foreign key on [AreaCod] in table 'GrupoAreas'
ALTER TABLE [dbo].[GrupoAreas]
ADD CONSTRAINT [FK_AreaGrupoArea]
    FOREIGN KEY ([AreaCod])
    REFERENCES [dbo].[Areas]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AreaGrupoArea'
CREATE INDEX [IX_FK_AreaGrupoArea]
ON [dbo].[GrupoAreas]
    ([AreaCod]);
GO

-- Creating foreign key on [GrupoId] in table 'GrupoAreas'
ALTER TABLE [dbo].[GrupoAreas]
ADD CONSTRAINT [FK_GrupoGrupoArea]
    FOREIGN KEY ([GrupoId])
    REFERENCES [dbo].[GrupoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GrupoGrupoArea'
CREATE INDEX [IX_FK_GrupoGrupoArea]
ON [dbo].[GrupoAreas]
    ([GrupoId]);
GO

-- Creating foreign key on [AreaCod] in table 'AreaSubareas'
ALTER TABLE [dbo].[AreaSubareas]
ADD CONSTRAINT [FK_AreaAreaSubarea]
    FOREIGN KEY ([AreaCod])
    REFERENCES [dbo].[Areas]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AreaAreaSubarea'
CREATE INDEX [IX_FK_AreaAreaSubarea]
ON [dbo].[AreaSubareas]
    ([AreaCod]);
GO

-- Creating foreign key on [SubareaId] in table 'AreaSubareas'
ALTER TABLE [dbo].[AreaSubareas]
ADD CONSTRAINT [FK_SubareaAreaSubarea]
    FOREIGN KEY ([SubareaId])
    REFERENCES [dbo].[SubareaSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubareaAreaSubarea'
CREATE INDEX [IX_FK_SubareaAreaSubarea]
ON [dbo].[AreaSubareas]
    ([SubareaId]);
GO

-- Creating foreign key on [GrupoAreaIdGrupoArea] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [FK_GrupoAreaEmpleados]
    FOREIGN KEY ([GrupoAreaIdGrupoArea])
    REFERENCES [dbo].[GrupoAreas]
        ([IdGrupoArea])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GrupoAreaEmpleados'
CREATE INDEX [IX_FK_GrupoAreaEmpleados]
ON [dbo].[EmpleadosSet]
    ([GrupoAreaIdGrupoArea]);
GO

-- Creating foreign key on [GrupoId] in table 'SubareaSet'
ALTER TABLE [dbo].[SubareaSet]
ADD CONSTRAINT [FK_GrupoSubarea]
    FOREIGN KEY ([GrupoId])
    REFERENCES [dbo].[GrupoSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_GrupoSubarea'
CREATE INDEX [IX_FK_GrupoSubarea]
ON [dbo].[SubareaSet]
    ([GrupoId]);
GO

-- Creating foreign key on [CargosCod] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [FK_CargosEmpleados]
    FOREIGN KEY ([CargosCod])
    REFERENCES [dbo].[CargosSet]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CargosEmpleados'
CREATE INDEX [IX_FK_CargosEmpleados]
ON [dbo].[EmpleadosSet]
    ([CargosCod]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------