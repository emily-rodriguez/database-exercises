USE adlister_db;

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE users;
TRUNCATE ads;
TRUNCATE categories;
TRUNCATE ad_category;
SET FOREIGN_KEY_CHECKS=1;

INSERT INTO users (email, password, display_name) VALUES
  ('bob@bob.com', '1234', 'Bob'),
  ('sally@sally.com', '1234', 'Sally'),
  ('jim@jim.com', '1234', 'Jim');



INSERT INTO ads(title, description, user_id) VALUES
  ('Couch for sale', 'Selling red leather couch', 1),
  ('Looking for movers', 'Moving out soon. Need movers', 1),
  ('Roomate needed', 'Extra room. Money pls', 2),
  ('Dog Missing', 'Sheperd age 2 missing', 3),
  ('Lawn services needed', 'Long grass need help to cut pls', 3);

INSERT INTO categories(category) VALUES
  ('furniture'),
  ('for sale'),
  ('pets'),
  ('maintenance'),
  ('housing'),
  ('services'),
  ('jobs'),
  ('community');


INSERT INTO ad_category(ad_id, category_id) VALUES
  (1,1),
  (1,2),
  (2,1),
  (2,4),
  (2,5),
  (2,6),
  (2,7),
  (2,8),
  (3,5),
  (3,8),
  (4,3),
  (4,8),
  (5,4),
  (5,6),
  (5,7),
  (5,8);


SELECT u.email, a.title
FROM users u
  JOIN ads a ON u.id = a.user_id;

SELECT a.title, c.category
FROM ads a
  JOIN ad_category ac ON a.id = ac.ad_id
  JOIN categories c ON ac.category_id = c.id;

SELECT c.category, a.title
FROM categories c
  JOIN ad_category ac ON c.id = ac.category_id
  JOIN ads a ON ac.ad_id = a.id
ORDER BY category;

SELECT u.display_name, a.title
FROM users u
  JOIN ads a ON u.id = a.user_id;