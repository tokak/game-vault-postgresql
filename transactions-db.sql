-- Veri ekleme(dml - insert)

INSERT INTO developers (company_name, country, founder_year) VALUES
('Peak Games', 'Turkey', 2010),
('TaleWorlds Entertainment', 'Turkey', 2005),
('Masomo Gaming', 'Turkey', 2015),
('Gram Games', 'Turkey', 2013),
('Dream Games', 'Turkey', 2019);

INSERT INTO genres (name, description) VALUES
('RPG', 'Role playing games with character progression'),
('Open World', 'Large open world exploration and freedom'),
('Horror', 'Scary and suspense focused gameplay'),
('FPS', 'First person shooter games'),
('Sports', 'Sports themed competitive games');

INSERT INTO games (title, price, release_date, rating, developer_id) VALUES
('The Witcher 3', 39.99, '2015-05-19', 95, 1),
('Cyberpunk 2077', 49.99, '2020-12-10', 86, 1),
('GTA V', 29.99, '2013-09-17', 97, 2),
('Red Dead Redemption 2', 59.99, '2018-10-26', 96, 2),
('Skyrim', 19.99, '2011-11-11', 94, 4),
('Elden Ring', 59.99, '2022-02-25', 96, 6),
('Resident Evil 7', 29.99, '2017-01-24', 86, 3),
('Counter-Strike 2', 0.00, '2023-09-27', 90, 5),
('FIFA 23', 59.99, '2022-09-30', 80, 7),
('Mount & Blade II: Bannerlord', 49.99, '2020-03-30', 88, 4);

INSERT INTO games_genres (game_id, genre_id) VALUES
(1, 1), (1, 2),
(2, 1), (2, 2), (2, 4),
(3, 2),
(4, 2),
(5, 1), (5, 2),
(6, 1), (6, 2),
(7, 3), (7, 4),
(8, 4),
(9, 5),
(10, 1), (10, 2);


--- Güncelleme ve Silme (UPDATE / DELETE)

UPDATE games SET price = price * 0.90;

UPDATE games SET rating = 90 WHERE title = 'Cyberpunk 2077';

DELETE FROM games_genres WHERE game_id = 2;

DELETE FROM games WHERE id = 2;


---- Raporlama (SELECT & JOIN)

SELECT g.title, g.price, d.company_name FROM games g JOIN developers d ON d.id = g.developer_id;

SELECT g.title, g.rating FROM games g JOIN games_genres gg ON gg.game_id = g.id JOIN genres gr ON gr.id = gg.genre_id WHERE gr.name = 'RPG';

SELECT title, price FROM games WHERE price > 500 ORDER BY price DESC;

SELECT title FROM games WHERE title ILIKE '%war%';






