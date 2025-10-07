CREATE DATABASE IF NOT EXISTS comcomponets;

USE comcomponets;

CREATE TABLE product(
pro_id INT PRIMARY KEY,
pro_name VARCHAR(50),
pro_price INT NOT NULL,
pro_code INT NOT NULL
);

INSERT INTO product
VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);

SELECT * FROM product;

SELECT pro_price,pro_name FROM product
WHERE pro_price >= 250.00
ORDER BY pro_price DESC, pro_name ASC;

/* SELECT pro_name , pro_price FROM product
GROUP BY pro_name,pro_price
HAVING pro_price = MIN(pro_price);*/
SELECT pro_name, pro_price
FROM product
WHERE pro_price = (SELECT MIN(pro_price) FROM product);

SELECT pro_code , AVG(pro_price) 
FROM product 
GROUP BY pro_code;

SELECT AVG(pro_price) FROM product;
DROP TABLE product;