USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS '#1';

SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt Pepper''s Lonely Hearts Club Band was released:' AS '#2';

SELECT release_date FROM albums WHERE name LIKE 'Sgt%';

SELECT 'The genre for Nevermind' AS '#3';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '#4';

SELECT name FROM albums WHERE release_date >= 1990 AND release_date < 2000;

SELECT 'Which albums had less than 20 million certified sales' AS '#5';

SELECT name FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of Rock' AS '#6';

SELECT name, genre FROM albums WHERE genre LIKE '%rock%';