USE Marvel;
GO
-- Inserting sample data into the Origins table
INSERT INTO Origins (OriginID, OriginName) VALUES
(1, 'Earth'),
(2, 'Asgard'),
(3, 'Wakanda');

-- Inserting sample data into the Characters table
INSERT INTO Characters (CharacterID, Name, Gender, Age, OriginID) VALUES
(1, 'Iron Man', 'Male', 40, 1),
(2, 'Thor', 'Male', 1000, 2),
(3, 'Black Panther', 'Male', 35, 3),
(4, 'Captain America', 'Male', 100, 1),
(5, 'Spider-Man', 'Male', 20, 1);

-- Inserting sample data into the Comics table
INSERT INTO Comics (ComicID, Title, IssueNumber, PublicationDate) VALUES
(1, 'Iron Man Vol. 1', 1, '2023-01-15'),
(2, 'Thor: God of Thunder', 1, '2022-05-20'),
(3, 'Black Panther Vol. 1', 1, '2023-03-10');

-- Inserting sample data into the Teams table
INSERT INTO Teams (TeamID, TeamName) VALUES
(1, 'Avengers'),
(2, 'X-Men'),
(3, 'Fantastic Four');

-- Inserting sample data into the Powers table
INSERT INTO Powers (PowerID, PowerName, Description) VALUES
(1, 'Super Strength', 'Enhanced physical strength'),
(2, 'Flight', 'Ability to fly'),
(3, 'Telepathy', 'Ability to read minds');

-- Inserting sample data into the Events table
INSERT INTO Events (EventID, EventName, EventDate) VALUES
(1, 'Avengers Assemble', '2023-02-01'),
(2, 'Galactus Invasion', '2022-11-15');

-- Inserting sample data into the Movies table
INSERT INTO Movies (MovieID, Title, ReleaseDate) VALUES
(1, 'Iron Man', '2008-04-30'),
(2, 'Thor', '2011-05-06'),
(3, 'Black Panther', '2018-02-16');

-- Inserting sample data into the Series table
INSERT INTO Series (SeriesID, Title, StartDate) VALUES
(1, 'Iron Man: Armored Adventures', '2008-04-24'),
(2, 'The Avengers: Earth''s Mightiest Heroes', '2010-10-20'),
(3, 'Thor: Ragnarok', '2017-11-03');

-- Inserting sample data into the Creators table
INSERT INTO Creators (CreatorID, Name) VALUES
(1, 'Stan Lee'),
(2, 'Jack Kirby'),
(3, 'Robert Downey Jr.');

-- Inserting sample data into the Relationships table
INSERT INTO Relationships (RelationshipID, Character1ID, Character2ID, RelationshipType) VALUES
(1, 1, 4, 'Teammates'),
(2, 2, 3, 'Allies'),
(3, 5, 4, 'Rivals');
