USE Marvel;
GO
-- Deleting sample data from the Relationships table
DELETE FROM Relationships WHERE RelationshipID IN (1, 2, 3);

-- Deleting sample data from the Creators table
DELETE FROM Creators WHERE CreatorID IN (1, 2, 3);

-- Deleting sample data from the Series table
DELETE FROM Series WHERE SeriesID IN (1, 2, 3);

-- Deleting sample data from the Movies table
DELETE FROM Movies WHERE MovieID IN (1, 2, 3);

-- Deleting sample data from the Events table
DELETE FROM Events WHERE EventID IN (1, 2);

-- Deleting sample data from the Powers table
DELETE FROM Powers WHERE PowerID IN (1, 2, 3);

-- Deleting sample data from the Teams table
DELETE FROM Teams WHERE TeamID IN (1, 2, 3);

-- Deleting sample data from the Comics table
DELETE FROM Comics WHERE ComicID IN (1, 2, 3);

-- Deleting sample data from the Characters table
DELETE FROM Characters WHERE CharacterID IN (1, 2, 3, 4, 5);

-- Deleting sample data from the Origins table
DELETE FROM Origins WHERE OriginID IN (1, 2, 3);
