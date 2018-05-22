USE codeup_test_db;

DROP TABLE IF EXISTS pizza_order;

CREATE TABLE pizza_order(
  name VARCHAR(50),
  phone_number VARCHAR(10),
  email VARCHAR(50),
  address VARCHAR(100),
  pizza_size VARCHAR(20),
  total_cost DECIMAL(10,2),
  descripation VARCHAR(200),
  isDelivered TINYINT(1),
  created_at DATETIME,
  updated_at DATETIME
);


