
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/08/2023 16:42:11
-- Generated from EDMX file: D:\F-Code\Techway 2023 - Season 3\LibraryManagementSystem-master\LibraryManagementSystem\EntityFramework\LibraryModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Library];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Books_BookTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Books] DROP CONSTRAINT [FK_Books_BookTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Books_Departments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Books] DROP CONSTRAINT [FK_Books_Departments];
GO
IF OBJECT_ID(N'[dbo].[FK_Books_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Books] DROP CONSTRAINT [FK_Books_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_Fines_Books]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fines] DROP CONSTRAINT [FK_Fines_Books];
GO
IF OBJECT_ID(N'[dbo].[FK_Fines_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fines] DROP CONSTRAINT [FK_Fines_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_Fines_Students]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fines] DROP CONSTRAINT [FK_Fines_Students];
GO
IF OBJECT_ID(N'[dbo].[FK_IssueBooks_Books]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IssueBooks] DROP CONSTRAINT [FK_IssueBooks_Books];
GO
IF OBJECT_ID(N'[dbo].[FK_IssueBooks_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IssueBooks] DROP CONSTRAINT [FK_IssueBooks_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_IssueBooks_Students]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[IssueBooks] DROP CONSTRAINT [FK_IssueBooks_Students];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBooks_Books]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBooks] DROP CONSTRAINT [FK_ReturnBooks_Books];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBooks_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBooks] DROP CONSTRAINT [FK_ReturnBooks_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_ReturnBooks_Students]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReturnBooks] DROP CONSTRAINT [FK_ReturnBooks_Students];
GO
IF OBJECT_ID(N'[dbo].[FK_Staffs_Designations]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_Staffs_Designations];
GO
IF OBJECT_ID(N'[dbo].[FK_Students_Departments]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_Students_Departments];
GO
IF OBJECT_ID(N'[dbo].[FK_Students_Programs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_Students_Programs];
GO
IF OBJECT_ID(N'[dbo].[FK_Students_Sessions]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_Students_Sessions];
GO
IF OBJECT_ID(N'[dbo].[FK_Students_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Students] DROP CONSTRAINT [FK_Students_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_UserPrivileges_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserPrivileges] DROP CONSTRAINT [FK_UserPrivileges_Staffs];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Staffs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Staffs];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BookCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookCategories];
GO
IF OBJECT_ID(N'[dbo].[Books]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Books];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[Designations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Designations];
GO
IF OBJECT_ID(N'[dbo].[Fines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Fines];
GO
IF OBJECT_ID(N'[dbo].[IssueBooks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[IssueBooks];
GO
IF OBJECT_ID(N'[dbo].[Programs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Programs];
GO
IF OBJECT_ID(N'[dbo].[ReturnBooks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReturnBooks];
GO
IF OBJECT_ID(N'[dbo].[Sessions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sessions];
GO
IF OBJECT_ID(N'[dbo].[Staffs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staffs];
GO
IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[UserPrivileges]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserPrivileges];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BookCategories'
CREATE TABLE [dbo].[BookCategories] (
    [BookCategoryID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Books'
CREATE TABLE [dbo].[Books] (
    [BookID] int IDENTITY(1,1) NOT NULL,
    [BookCategoryID] int  NOT NULL,
    [StaffID] int  NOT NULL,
    [DepartmentID] int  NOT NULL,
    [BookName] nvarchar(200)  NOT NULL,
    [Author] nvarchar(100)  NOT NULL,
    [Title] nvarchar(100)  NOT NULL,
    [Edition] nvarchar(50)  NOT NULL,
    [NoOfCopies] int  NOT NULL,
    [DateOfRegister] datetime  NOT NULL,
    [Price] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [DepartmentID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [EstablishDate] datetime  NOT NULL
);
GO

-- Creating table 'Designations'
CREATE TABLE [dbo].[Designations] (
    [DesignationID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'IssueBooks'
CREATE TABLE [dbo].[IssueBooks] (
    [IssueID] int IDENTITY(1,1) NOT NULL,
    [StudentID] int  NOT NULL,
    [BookID] int  NOT NULL,
    [StaffID] int  NOT NULL,
    [NoOfCopies] int  NOT NULL,
    [DateOfIssue] datetime  NOT NULL,
    [DateOfReturn] datetime  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Programs'
CREATE TABLE [dbo].[Programs] (
    [ProgramID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'ReturnBooks'
CREATE TABLE [dbo].[ReturnBooks] (
    [ReturnID] int IDENTITY(1,1) NOT NULL,
    [BookID] int  NOT NULL,
    [StudentID] int  NOT NULL,
    [StaffID] int  NOT NULL,
    [IssueDate] datetime  NOT NULL,
    [ReturnDate] datetime  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Sessions'
CREATE TABLE [dbo].[Sessions] (
    [SessionID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL
);
GO

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [StudentID] int IDENTITY(1,1) NOT NULL,
    [SessionID] int  NOT NULL,
    [DepartmentID] int  NOT NULL,
    [ProgramID] int  NOT NULL,
    [StaffID] int  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [TCNO] nvarchar(11)  NOT NULL,
    [Status] int  NOT NULL,
    [Gender] int  NOT NULL,
    [EnrollNo] nvarchar(100)  NOT NULL,
    [ContactNo] nvarchar(50)  NOT NULL,
    [Address] nvarchar(200)  NOT NULL,
    [RegisterDate] datetime  NOT NULL
);
GO

-- Creating table 'UserPrivileges'
CREATE TABLE [dbo].[UserPrivileges] (
    [UserPrivilege] int IDENTITY(1,1) NOT NULL,
    [StaffID] int  NOT NULL,
    [Configuration] int  NOT NULL,
    [Staff] int  NOT NULL,
    [Student] int  NOT NULL,
    [Book] int  NOT NULL,
    [IssueBook] int  NOT NULL,
    [ReturnBook] int  NOT NULL,
    [Report] int  NOT NULL,
    [Gsm] int  NOT NULL,
    [Email] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [StaffID] int  NOT NULL,
    [UserName] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'Staffs'
CREATE TABLE [dbo].[Staffs] (
    [StaffID] int IDENTITY(1,1) NOT NULL,
    [DesignationID] int  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [TCNO] nvarchar(11)  NOT NULL,
    [Gender] int  NOT NULL,
    [Address] nvarchar(200)  NOT NULL,
    [ContactNo] nvarchar(13)  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Fines'
CREATE TABLE [dbo].[Fines] (
    [FineID] int IDENTITY(1,1) NOT NULL,
    [StudentID] int  NOT NULL,
    [BookID] int  NOT NULL,
    [StaffID] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [FineAmount] int  NOT NULL,
    [RecivedAmount] int  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BookCategoryID] in table 'BookCategories'
ALTER TABLE [dbo].[BookCategories]
ADD CONSTRAINT [PK_BookCategories]
    PRIMARY KEY CLUSTERED ([BookCategoryID] ASC);
GO

-- Creating primary key on [BookID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [PK_Books]
    PRIMARY KEY CLUSTERED ([BookID] ASC);
GO

-- Creating primary key on [DepartmentID] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([DepartmentID] ASC);
GO

-- Creating primary key on [DesignationID] in table 'Designations'
ALTER TABLE [dbo].[Designations]
ADD CONSTRAINT [PK_Designations]
    PRIMARY KEY CLUSTERED ([DesignationID] ASC);
GO

-- Creating primary key on [IssueID] in table 'IssueBooks'
ALTER TABLE [dbo].[IssueBooks]
ADD CONSTRAINT [PK_IssueBooks]
    PRIMARY KEY CLUSTERED ([IssueID] ASC);
GO

-- Creating primary key on [ProgramID] in table 'Programs'
ALTER TABLE [dbo].[Programs]
ADD CONSTRAINT [PK_Programs]
    PRIMARY KEY CLUSTERED ([ProgramID] ASC);
GO

-- Creating primary key on [ReturnID] in table 'ReturnBooks'
ALTER TABLE [dbo].[ReturnBooks]
ADD CONSTRAINT [PK_ReturnBooks]
    PRIMARY KEY CLUSTERED ([ReturnID] ASC);
GO

-- Creating primary key on [SessionID] in table 'Sessions'
ALTER TABLE [dbo].[Sessions]
ADD CONSTRAINT [PK_Sessions]
    PRIMARY KEY CLUSTERED ([SessionID] ASC);
GO

-- Creating primary key on [StudentID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([StudentID] ASC);
GO

-- Creating primary key on [UserPrivilege] in table 'UserPrivileges'
ALTER TABLE [dbo].[UserPrivileges]
ADD CONSTRAINT [PK_UserPrivileges]
    PRIMARY KEY CLUSTERED ([UserPrivilege] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [StaffID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [PK_Staffs]
    PRIMARY KEY CLUSTERED ([StaffID] ASC);
GO

-- Creating primary key on [FineID] in table 'Fines'
ALTER TABLE [dbo].[Fines]
ADD CONSTRAINT [PK_Fines]
    PRIMARY KEY CLUSTERED ([FineID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [BookCategoryID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [FK_Books_BookTypes]
    FOREIGN KEY ([BookCategoryID])
    REFERENCES [dbo].[BookCategories]
        ([BookCategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Books_BookTypes'
CREATE INDEX [IX_FK_Books_BookTypes]
ON [dbo].[Books]
    ([BookCategoryID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [FK_Books_Departments]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Departments]
        ([DepartmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Books_Departments'
CREATE INDEX [IX_FK_Books_Departments]
ON [dbo].[Books]
    ([DepartmentID]);
GO

-- Creating foreign key on [BookID] in table 'IssueBooks'
ALTER TABLE [dbo].[IssueBooks]
ADD CONSTRAINT [FK_IssueBooks_Books]
    FOREIGN KEY ([BookID])
    REFERENCES [dbo].[Books]
        ([BookID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IssueBooks_Books'
CREATE INDEX [IX_FK_IssueBooks_Books]
ON [dbo].[IssueBooks]
    ([BookID]);
GO

-- Creating foreign key on [BookID] in table 'ReturnBooks'
ALTER TABLE [dbo].[ReturnBooks]
ADD CONSTRAINT [FK_ReturnBooks_Books]
    FOREIGN KEY ([BookID])
    REFERENCES [dbo].[Books]
        ([BookID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBooks_Books'
CREATE INDEX [IX_FK_ReturnBooks_Books]
ON [dbo].[ReturnBooks]
    ([BookID]);
GO

-- Creating foreign key on [DepartmentID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_Students_Departments]
    FOREIGN KEY ([DepartmentID])
    REFERENCES [dbo].[Departments]
        ([DepartmentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Students_Departments'
CREATE INDEX [IX_FK_Students_Departments]
ON [dbo].[Students]
    ([DepartmentID]);
GO

-- Creating foreign key on [StudentID] in table 'IssueBooks'
ALTER TABLE [dbo].[IssueBooks]
ADD CONSTRAINT [FK_IssueBooks_Students]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[Students]
        ([StudentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IssueBooks_Students'
CREATE INDEX [IX_FK_IssueBooks_Students]
ON [dbo].[IssueBooks]
    ([StudentID]);
GO

-- Creating foreign key on [ProgramID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_Students_Programs]
    FOREIGN KEY ([ProgramID])
    REFERENCES [dbo].[Programs]
        ([ProgramID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Students_Programs'
CREATE INDEX [IX_FK_Students_Programs]
ON [dbo].[Students]
    ([ProgramID]);
GO

-- Creating foreign key on [StudentID] in table 'ReturnBooks'
ALTER TABLE [dbo].[ReturnBooks]
ADD CONSTRAINT [FK_ReturnBooks_Students]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[Students]
        ([StudentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBooks_Students'
CREATE INDEX [IX_FK_ReturnBooks_Students]
ON [dbo].[ReturnBooks]
    ([StudentID]);
GO

-- Creating foreign key on [SessionID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_Students_Sessions]
    FOREIGN KEY ([SessionID])
    REFERENCES [dbo].[Sessions]
        ([SessionID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Students_Sessions'
CREATE INDEX [IX_FK_Students_Sessions]
ON [dbo].[Students]
    ([SessionID]);
GO

-- Creating foreign key on [StaffID] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [FK_Books_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Books_Staffs'
CREATE INDEX [IX_FK_Books_Staffs]
ON [dbo].[Books]
    ([StaffID]);
GO

-- Creating foreign key on [DesignationID] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staffs_Designations]
    FOREIGN KEY ([DesignationID])
    REFERENCES [dbo].[Designations]
        ([DesignationID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staffs_Designations'
CREATE INDEX [IX_FK_Staffs_Designations]
ON [dbo].[Staffs]
    ([DesignationID]);
GO

-- Creating foreign key on [StaffID] in table 'IssueBooks'
ALTER TABLE [dbo].[IssueBooks]
ADD CONSTRAINT [FK_IssueBooks_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_IssueBooks_Staffs'
CREATE INDEX [IX_FK_IssueBooks_Staffs]
ON [dbo].[IssueBooks]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'ReturnBooks'
ALTER TABLE [dbo].[ReturnBooks]
ADD CONSTRAINT [FK_ReturnBooks_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReturnBooks_Staffs'
CREATE INDEX [IX_FK_ReturnBooks_Staffs]
ON [dbo].[ReturnBooks]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_Students_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Students_Staffs'
CREATE INDEX [IX_FK_Students_Staffs]
ON [dbo].[Students]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'UserPrivileges'
ALTER TABLE [dbo].[UserPrivileges]
ADD CONSTRAINT [FK_UserPrivileges_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserPrivileges_Staffs'
CREATE INDEX [IX_FK_UserPrivileges_Staffs]
ON [dbo].[UserPrivileges]
    ([StaffID]);
GO

-- Creating foreign key on [StaffID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Staffs'
CREATE INDEX [IX_FK_Users_Staffs]
ON [dbo].[Users]
    ([StaffID]);
GO

-- Creating foreign key on [BookID] in table 'Fines'
ALTER TABLE [dbo].[Fines]
ADD CONSTRAINT [FK_Fines_Books]
    FOREIGN KEY ([BookID])
    REFERENCES [dbo].[Books]
        ([BookID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Fines_Books'
CREATE INDEX [IX_FK_Fines_Books]
ON [dbo].[Fines]
    ([BookID]);
GO

-- Creating foreign key on [StaffID] in table 'Fines'
ALTER TABLE [dbo].[Fines]
ADD CONSTRAINT [FK_Fines_Staffs]
    FOREIGN KEY ([StaffID])
    REFERENCES [dbo].[Staffs]
        ([StaffID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Fines_Staffs'
CREATE INDEX [IX_FK_Fines_Staffs]
ON [dbo].[Fines]
    ([StaffID]);
GO

-- Creating foreign key on [StudentID] in table 'Fines'
ALTER TABLE [dbo].[Fines]
ADD CONSTRAINT [FK_Fines_Students]
    FOREIGN KEY ([StudentID])
    REFERENCES [dbo].[Students]
        ([StudentID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Fines_Students'
CREATE INDEX [IX_FK_Fines_Students]
ON [dbo].[Fines]
    ([StudentID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------