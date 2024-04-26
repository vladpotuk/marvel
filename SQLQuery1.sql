-- Створення бази даних
CREATE DATABASE MarvelCharacters;
GO

USE MarvelCharacters;
GO

-- Тригер для автоматичного створення бази даних
CREATE TRIGGER AutomaticDatabaseCreationTrigger
ON ALL SERVER 
FOR CREATE_DATABASE 
AS 
BEGIN 
    DECLARE @databaseName NVARCHAR(128)
    SET @databaseName = EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]', 'NVARCHAR(128)')
    
    IF @databaseName = 'MarvelCharacters'
    BEGIN
        DECLARE @sql NVARCHAR(MAX)
        SET @sql = '
        USE MarvelCharacters;
        CREATE TABLE Origins (
            OriginID INT PRIMARY KEY,
            OriginName NVARCHAR(100) NOT NULL CHECK (LEN(OriginName) > 0)
        );

        CREATE TABLE Characters (
            CharacterID INT PRIMARY KEY,
            Name NVARCHAR(100) NOT NULL CHECK (LEN(Name) > 0),
            Gender NVARCHAR(10),
            Age INT CHECK (Age >= 0),
            OriginID INT FOREIGN KEY REFERENCES Origins(OriginID)
        );

        CREATE TABLE Comics (
            ComicID INT PRIMARY KEY,
            Title NVARCHAR(100) NOT NULL CHECK (LEN(Title) > 0),
            IssueNumber INT CHECK (IssueNumber >= 0),
            PublicationDate DATE
        );

        CREATE TABLE Teams (
            TeamID INT PRIMARY KEY,
            TeamName NVARCHAR(100) NOT NULL CHECK (LEN(TeamName) > 0)
        );

        CREATE TABLE Powers (
            PowerID INT PRIMARY KEY,
            PowerName NVARCHAR(100) NOT NULL CHECK (LEN(PowerName) > 0),
            Description NVARCHAR(MAX)
        );

        CREATE TABLE Events (
            EventID INT PRIMARY KEY,
            EventName NVARCHAR(100) NOT NULL CHECK (LEN(EventName) > 0),
            EventDate DATE
        );

        CREATE TABLE Movies (
            MovieID INT PRIMARY KEY,
            Title NVARCHAR(100) NOT NULL CHECK (LEN(Title) > 0),
            ReleaseDate DATE
        );

        CREATE TABLE Series (
            SeriesID INT PRIMARY KEY,
            Title NVARCHAR(100) NOT NULL CHECK (LEN(Title) > 0),
            StartDate DATE
        );

        CREATE TABLE Creators (
            CreatorID INT PRIMARY KEY,
            Name NVARCHAR(100) NOT NULL CHECK (LEN(Name) > 0)
        );

        CREATE TABLE Relationships (
            RelationshipID INT PRIMARY KEY,
            Character1ID INT,
            Character2ID INT,
            RelationshipType NVARCHAR(50),
            FOREIGN KEY (Character1ID) REFERENCES Characters(CharacterID),
            FOREIGN KEY (Character2ID) REFERENCES Characters(CharacterID)
        );'

        EXEC sp_executesql @sql
    END
END;
GO
