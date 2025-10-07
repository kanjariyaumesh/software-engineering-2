CREATE DATABASE IF NOT EXISTS customer_care;

USE customer_care;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
cust_name VARCHAR(50),
city VARCHAR(50) NOT NULL,
grade INT ,
salesman_id INT NOT NULL , 
FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO customer
 VALUES
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brade Devis","New York",200,5001),
(3005,"Graham Zusi","california",200,5002),
(3008,"Julian green","london",300,5002),
(3004,"Fabian Johnson","paris",300,5006),
(3009,"Geoff cameron","Berlin",100,5003),
(3003,"Jozy altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",NULL,5005);

CREATE TABLE salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(4,2)
);

INSERT INTO salesman (salesman_id, name, city, commission)
VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);


SELECT * FROM customer;
SELECT * FROM salesman;

SELECT 
c.cust_name AS customer_name,
c.city AS customer_city,
s.name AS salesman_name,
s.commission AS salesman_com

FROM
customer c
INNER JOIN
salesman s
ON
c.salesman_id = s.salesman_id;


DROP DATABASE IF EXISTS customer_care;

