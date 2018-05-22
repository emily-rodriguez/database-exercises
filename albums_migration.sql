USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100),
  name VARCHAR(100),
  release_date INT(4),
  sales DECIMAL(5,2),
  genre VARCHAR(100),
  PRIMARY KEY (id)

);