USE Marvel;
GO
-- Updating sample data in the Characters table
UPDATE Characters
SET Age = 45
WHERE CharacterID = 1;

UPDATE Characters
SET Gender = 'Female'
WHERE CharacterID = 5;

-- Updating sample data in the Comics table
UPDATE Comics
SET IssueNumber = 2
WHERE ComicID = 1;

-- Updating sample data in the Events table
UPDATE Events
SET EventDate = '2023-02-15'
WHERE EventID = 1;

-- Updating sample data in the Movies table
UPDATE Movies
SET ReleaseDate = '2008-05-02'
WHERE MovieID = 1;

-- Updating sample data in the Powers table
UPDATE Powers
SET Description = 'Ability to communicate telepathically with others'
WHERE PowerID = 3;

-- Updating sample data in the Series table
UPDATE Series
SET Title = 'Iron Man: The Animated Series'
WHERE SeriesID = 1;

-- Updating sample data in the Teams table
UPDATE Teams
SET TeamName = 'New Avengers'
WHERE TeamID = 1;

-- Updating sample data in the Origins table
UPDATE Origins
SET OriginName = 'Krypton'
WHERE OriginID = 1;
