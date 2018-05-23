USE codeup_test_db;

SELECT 'Albums releases after 1991' AS '#1';

DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco''' AS '#2';

DELETE FROM albums WHERE genre LIKE '%disco%';

SELECT 'Albums by ''Whitney Houston''' AS '#3';

DELETE FROM albums WHERE artist LIKE '%whitney%';

