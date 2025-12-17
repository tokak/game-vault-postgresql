-- DEVELOPERS
INSERT INTO developers (company_name, country, founder_year) VALUES
('CD Projekt Red', 'Poland', 1994),
('Rockstar Games', 'USA', 1998),
('Ubisoft', 'France', 1986),
('Bethesda Game Studios', 'USA', 2001),
('Valve', 'USA', 1996),
('FromSoftware', 'Japan', 1986),
('Electronic Arts', 'USA', 1982),
('Nintendo', 'Japan', 1889),
('Blizzard Entertainment', 'USA', 1991),
('Square Enix', 'Japan', 1975);

-- GENRES
INSERT INTO genres (name, description) VALUES
('Action', 'Fast paced action based gameplay'),
('RPG', 'Role playing games with character progression'),
('Adventure', 'Story driven exploration games'),
('Shooter', 'First or third person shooting games'),
('Strategy', 'Tactical and strategic decision making'),
('Simulation', 'Real life simulation based games'),
('Horror', 'Scary and suspenseful games'),
('Open World', 'Large open world exploration'),
('Fantasy', 'Fantasy themed worlds and stories'),
('Multiplayer', 'Online or local multiplayer focused games');

-- GAMES
INSERT INTO games (title, price, release_date, rating, developer_id) VALUES
('The Witcher 3', 39.99, '2015-05-19', 95, 1),
('Cyberpunk 2077', 49.99, '2020-12-10', 86, 1),

('GTA V', 29.99, '2013-09-17', 97, 2),
('Red Dead Redemption 2', 59.99, '2018-10-26', 96, 2),

('Assassin''s Creed Valhalla', 44.99, '2020-11-10', 84, 3),
('Far Cry 6', 39.99, '2021-10-07', 78, 3),

('Skyrim', 19.99, '2011-11-11', 94, 4),
('Starfield', 69.99, '2023-09-06', 83, 4),

('Half-Life 2', 9.99, '2004-11-16', 96, 5),
('Counter-Strike 2', 0.00, '2023-09-27', 90, 5),

('Dark Souls III', 29.99, '2016-03-24', 89, 6),
('Elden Ring', 59.99, '2022-02-25', 96, 6),

('FIFA 23', 59.99, '2022-09-30', 80, 7),
('The Sims 4', 0.00, '2014-09-02', 85, 7),

('The Legend of Zelda: BOTW', 59.99, '2017-03-03', 97, 8),
('Super Mario Odyssey', 49.99, '2017-10-27', 97, 8),

('World of Warcraft', 14.99, '2004-11-23', 91, 9),
('Diablo IV', 69.99, '2023-06-06', 88, 9),

('Final Fantasy XV', 39.99, '2016-11-29', 81, 10),
('Final Fantasy VII Remake', 69.99, '2020-04-10', 89, 10);

-- GAMES_GENRES
INSERT INTO games_genres (game_id, genre_id) VALUES
(1, 2), (1, 8), (1, 9),
(2, 1), (2, 2), (2, 8),
(3, 1), (3, 8), (3, 10),
(4, 1), (4, 8), (4, 3),
(5, 1), (5, 2), (5, 9),
(6, 1), (6, 4), (6, 8),
(7, 2), (7, 9), (7, 8),
(8, 2), (8, 8), (8, 9),
(9, 1), (9, 4),
(10, 4), (10, 10),
(11, 1), (11, 2), (11, 7),
(12, 1), (12, 2), (12, 8), (12, 9),
(13, 6), (13, 10),
(14, 6),
(15, 3), (15, 8), (15, 9),
(16, 3), (16, 1),
(17, 2), (17, 10), (17, 9),
(18, 1), (18, 2), (18, 9),
(19, 2), (19, 9),
(20, 1), (20, 2), (20, 9);
