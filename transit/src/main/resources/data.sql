DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS accounts;

CREATE TABLE `accounts` (
  `customer_id` int NOT NULL,
   `account_number` int AUTO_INCREMENT  PRIMARY KEY,
  `account_type` varchar(100) NOT NULL,
  `branch_address` varchar(200) NOT NULL,
  `create_dt` date DEFAULT NULL
);
 
INSERT INTO `accounts` (`customer_id`, `account_number`, `account_type`, `branch_address`, `create_dt`)
 VALUES (1, 186576453, 'Savings', '123 Main Street, New York', CURDATE());
 
