USE MarvelCharacters;
GO
-- Procedure 1: Get all characters from a specific team
CREATE PROCEDURE GetCharactersByTeam
    @TeamName NVARCHAR(100)
AS
BEGIN
    SELECT c.*
    FROM Characters c
    INNER JOIN Teams t ON c.TeamID = t.TeamID
    WHERE t.TeamName = @TeamName;
END;
GO

-- Procedure 2: Get all comics from a specific year
CREATE PROCEDURE GetComicsByYear
    @Year INT
AS
BEGIN
    SELECT *
    FROM Comics
    WHERE YEAR(PublicationDate) = @Year;
END;
GO

-- Procedure 3: Get all superpowers of a specific character
CREATE PROCEDURE GetPowersByCharacter
    @CharacterID INT
AS
BEGIN
    SELECT p.*
    FROM Powers p
    INNER JOIN CharacterPowers cp ON p.PowerID = cp.PowerID
    WHERE cp.CharacterID = @CharacterID;
END;
GO

-- Procedure 4: Get all movies from a specific year
CREATE PROCEDURE GetMoviesByYear
    @Year INT
AS
BEGIN
    SELECT *
    FROM Movies
    WHERE YEAR(ReleaseDate) = @Year;
END;
GO

-- Procedure 5: Get all series from a specific year
CREATE PROCEDURE GetSeriesByYear
    @Year INT
AS
BEGIN
    SELECT *
    FROM Series
    WHERE YEAR(StartDate) = @Year;
END;
GO

-- Procedure 6: Get all events from a specific year
CREATE PROCEDURE GetEventsByYear
    @Year INT
AS
BEGIN
    SELECT *
    FROM Events
    WHERE YEAR(EventDate) = @Year;
END;
GO

-- Procedure 7: Get all characters that possess a specific superpower
CREATE PROCEDURE GetCharactersByPower
    @PowerName NVARCHAR(100)
AS
BEGIN
    SELECT c.*
    FROM Characters c
    INNER JOIN CharacterPowers cp ON c.CharacterID = cp.CharacterID
    INNER JOIN Powers p ON cp.PowerID = p.PowerID
    WHERE p.PowerName = @PowerName;
END;
GO

-- Procedure 8: Get all teams whose members possess a specific superpower
CREATE PROCEDURE GetTeamsByPower
    @PowerName NVARCHAR(100)
AS
BEGIN
    SELECT DISTINCT t.*
    FROM Teams t
    INNER JOIN Characters c ON t.TeamID = c.TeamID
    INNER JOIN CharacterPowers cp ON c.CharacterID = cp.CharacterID
    INNER JOIN Powers p ON cp.PowerID = p.PowerID
    WHERE p.PowerName = @PowerName;
END;
GO

-- Procedure 9: Get male characters who possess a specific superpower
CREATE PROCEDURE GetMaleCharactersWithPower
    @PowerName NVARCHAR(100)
AS
BEGIN
    SELECT c.*
    FROM Characters c
    INNER JOIN CharacterPowers cp ON c.CharacterID = cp.CharacterID
    INNER JOIN Powers p ON cp.PowerID = p.PowerID
    WHERE p.PowerName = @PowerName
    AND c.Gender = 'Male';
END;
GO

-- Procedure 10: Get female characters who possess a specific superpower
CREATE PROCEDURE GetFemaleCharactersWithPower
    @PowerName NVARCHAR(100)
AS
BEGIN
    SELECT c.*
    FROM Characters c
    INNER JOIN CharacterPowers cp ON c.CharacterID = cp.CharacterID
    INNER JOIN Powers p ON cp.PowerID = p.PowerID
    WHERE p.PowerName = @PowerName
    AND c.Gender = 'Female';
END;
GO

-- Continue adding other procedures as needed
