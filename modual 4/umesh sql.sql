
-- Lab 3: Create a database called library_db and a table books with columns: book_id, 
-- title, author, publisher, year_of_publication, and price. Insert five records into the table.


-- 1. Create Database
CREATE DATABASE library_db;
USE library_db;

-- Table: books
CREATE TABLE books (
  book_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  author VARCHAR(100),
  publisher VARCHAR(100),
  year_of_publication YEAR,
  price DECIMAL(8,2)
);

-- Insert 5 records into books
INSERT INTO books (title, author, publisher, year_of_publication, price) VALUES
('Book A','Author X','Publisher P',2010,50),
('Book B','Author Y','Publisher Q',2015,120),
('Book C','Author Z','Publisher R',2020,80),
('Book D','Author X','Publisher Q',2018,60),
('Book E','Author W','Publisher P',2012,40);


-- Lab 4: Create a table members in library_db with columns: member_id, member_name, 
-- date_of_membership, and email. Insert five records into this table. 

-- Table: members
CREATE TABLE members (
  member_id INT PRIMARY KEY AUTO_INCREMENT,
  member_name VARCHAR(100),
  date_of_membership DATE,
  email VARCHAR(50)
);

-- Insert 5 records into members
INSERT INTO members (member_name, date_of_membership, email) VALUES
('Jeel','2019-05-10','jeel@mail.com'),
('Rahul','2021-07-15','rahul@mail.com'),
('Priya','2023-01-01','priya@mail.com'),
('Aman','2018-09-20','aman@mail.com'),
('Sneha','2022-04-05','sneha@mail.com');


-- 2. SQL Syntax 
 
-- Lab 3: Retrieve all members who joined the library before 2022. Use appropriate SQL syntax 
-- with WHERE and ORDER BY. 

SELECT * FROM members
WHERE YEAR(date_of_membership) < 2022
ORDER BY date_of_membership;

-- Lab 4: Write SQL queries to display the titles of books published by a specific author. Sort the 
-- results by year_of_publication in descending order.


-- Titles of books by specific author (Author X), sorted by year desc
SELECT title, year_of_publication FROM books
WHERE author = 'Author X'
ORDER BY year_of_publication DESC;




-- 3. SQL Constraints  
 -- Lab 3: Add a CHECK constraint to ensure that the price of books in the books table is greater than 0. 


ALTER TABLE books
ADD CONSTRAINT chk_price CHECK (price > 0);


-- Lab 4: Modify the members table to add a UNIQUE constraint on the email column, 
-- ensuring that each member has a unique email address.

ALTER TABLE members
MODIFY email VARCHAR(100) UNIQUE;


-- 4. Main SQL Commands and Sub-commands (DDL)  
  
-- Lab 3: Create a table authors with the following columns: author_id, first_name, 
-- last_name, and country. Set author_id as the primary key.

    
CREATE TABLE authors (
  author_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  country VARCHAR(50)
);

-- Lab 4: Create a table publishers with columns: publisher_id, publisher_name, 
-- contact_number, and address. Set publisher_id as the primary key and contact_number as unique.



CREATE TABLE publishers (
  publisher_id INT PRIMARY KEY AUTO_INCREMENT,
  publisher_name VARCHAR(100),
  contact_number VARCHAR(20) UNIQUE,
  address VARCHAR(150)
);


-- 5. ALTER Command  
 
-- Lab 3: Add a new column genre to the books table. Update the genre for all existing records. 
-- Lab 4: Modify the members table to increase the length of the email column to 100 characters.


ALTER TABLE books ADD genre VARCHAR(50);
-- Update genre
UPDATE books SET genre='Fiction' WHERE book_id IN (1,2,3);
UPDATE books SET genre='Science' WHERE book_id IN (4,5);


ALTER TABLE members MODIFY email VARCHAR(100);


-- 6. DROP Command  
 
-- Lab 3: Drop the publishers table from the database after verifying its structure. 
-- Lab 4: Create a backup of the members table and then drop the original members table.

DESCRIBE publishers;
DROP TABLE publishers;


CREATE TABLE members_backup AS SELECT * FROM members;
DROP TABLE members;




-- 7. Data Manipulation Language (DML)  
 
-- Lab 4: Insert three new authors into the authors table, then update the last name of one of the authors. 
-- Lab 5: Delete a book from the books table where the price is higher than $100.


INSERT INTO authors (first_name,last_name,country) VALUES
('Chetan','Bhagat','India'),
('Arundhati','Roy','India'),
('Dan','Brown','USA');

-- Update last name of one author
UPDATE authors SET last_name='Brownie' WHERE first_name='Dan';


DELETE FROM books WHERE price > 100;


-- 8. UPDATE Command  
  
-- Lab 3: Update the year_of_publication of a book with a specific book_id. 
-- Lab 4: Increase the price of all books published before 2015 by 10%.

UPDATE books SET year_of_publication=2016 WHERE book_id=1;


UPDATE books SET price = price*1.1 WHERE year_of_publication < 2015;



-- 9. DELETE Command  

-- Lab 3: Remove all members who joined before 2020 from the members table. 
-- Lab 4: Delete all books that have a NULL value in the author column.

DELETE FROM members WHERE YEAR(date_of_membership) < 2020;


DELETE FROM books WHERE author IS NULL;



-- 10. Data Query Language (DQL)  

-- Lab 4: Write a query to retrieve all books with price between $50 and $100. 
-- Lab 5: Retrieve the list of books sorted by author in ascending order and limit the results to the top 3 entries.

SELECT * FROM books WHERE price BETWEEN 50 AND 100;

SELECT * FROM books ORDER BY author ASC LIMIT 3;



-- 11. Data Control Language (DCL)  
 
-- Lab 3: Grant SELECT permission to a user named librarian on the books table. 
-- Lab 4: Grant INSERT and UPDATE permissions to the user admin on the members table.
 
GRANT SELECT ON books TO 'user_1';


GRANT INSERT, UPDATE ON members TO 'user_1';



-- 12. REVOKE Command  

-- Lab 3: Revoke the INSERT privilege from the user librarian on the books table. 
-- Lab 4: Revoke all permissions from user admin on the members table.

REVOKE INSERT ON books FROM 'user_1';


REVOKE PRIVILEGES ON members FROM 'user_1';


-- 13. Transaction Control Language (TCL)  

-- Lab 3: Use COMMIT after inserting multiple records into the books table, then make another insertion and perform a ROLLBACK. 
-- Lab 4: Set a SAVEPOINT before making updates to the members table, perform some updates, and then roll back to the SAVEPOINT.

START TRANSACTION;

INSERT INTO books (title,author,publisher,year_of_publication,price,genre)
VALUES ('Book F','Author Test','Publisher S',2017,90,'History'),
('Book G','Author K','Publisher T',2019,70,'Novel');
COMMIT;

INSERT INTO books (title,author,publisher,year_of_publication,price,genre)
VALUES ('Book H','Author L','Publisher U',2015,55,'Drama');
ROLLBACK;


START TRANSACTION;
SAVEPOINT before_update;
UPDATE members_backup SET member_name='Updated Name' WHERE member_id=1;
ROLLBACK TO before_update;


-- 14. SQL Joins  
 
-- Lab 3: Perform an INNER JOIN between books and authors tables to display the title of books and their respective authors' names. 
-- Lab 4: Use a FULL OUTER JOIN to retrieve all records from the books and authors tables, 
-- including those with no matching entries in the other table.

SELECT b.title, a.first_name, a.last_name
FROM books b
INNER JOIN authors a ON b.author = CONCAT(a.first_name,' ',a.last_name);


-- FULL OUTER JOIN simulation in MySQL using UNION
SELECT b.title, a.first_name, a.last_name
FROM books b
LEFT JOIN authors a ON b.author = CONCAT(a.first_name,' ',a.last_name)
UNION
SELECT b.title, a.first_name, a.last_name
FROM books b
RIGHT JOIN authors a ON b.author = CONCAT(a.first_name,' ',a.last_name);



-- 15. SQL Group By  
 
-- Lab 3: Group books by genre and display the total number of books in each genre. 
-- Lab 4: Group members by the year they joined and find the number of members who joined each year.

SELECT genre, COUNT(*) AS total_books
FROM books GROUP BY genre;


SELECT YEAR(date_of_membership) AS join_year, COUNT(*) AS total_members
FROM members_backup
GROUP BY join_year;



-- 16. SQL Stored Procedure  
  
-- Lab 3: Write a stored procedure to retrieve all books by a particular author. 
-- Lab 4: Write a stored procedure that takes book_id as an argument and returns the price of the book.

DELIMITER //
CREATE PROCEDURE GetBooksByAuthor(IN auth_name VARCHAR(100))
BEGIN
  SELECT * FROM books WHERE author=auth_name;
END //
DELIMITER ;

-- CALL GetBooksByAuthor('Author X');


DELIMITER //
CREATE PROCEDURE GetBookPrice(IN b_id INT)
BEGIN
  SELECT price FROM books WHERE book_id=b_id;
END //
DELIMITER ;



-- 17. SQL View  
 
-- Lab 3: Create a view to show only the title, author, and price of books from the books table. 
-- Lab 4: Create a view to display members who joined before 2020.-- CALL GetBookPrice(2);


CREATE VIEW view_books AS
SELECT title, author, price FROM books;


CREATE VIEW view_members_before2020 AS
SELECT * FROM members_backup
WHERE YEAR(date_of_membership)<2020;


-- 18. SQL Trigger  
 
-- Lab 3: Create a trigger to automatically update the last_modified timestamp of the 
-- books table whenever a record is updated. 
-- Lab 4: Create a trigger that inserts a log entry into a log_changes table whenever a 
-- DELETE operation is performed on the books table.

ALTER TABLE books ADD COLUMN last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

CREATE TRIGGER trg_update_books
BEFORE UPDATE ON books
FOR EACH ROW
SET NEW.last_modified = NOW();


CREATE TABLE log_changes (
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  action VARCHAR(50),
  book_id INT,
  deleted_at TIMESTAMP
);


-- 19. Introduction to PL/SQL  
 
-- Lab 3: Write a PL/SQL block to insert a new book into the books table and display a confirmation message. 
-- Lab 4: Write a PL/SQL block to display the total number of books in the books table. 

CREATE TRIGGER trg_delete_books
AFTER DELETE ON books
FOR EACH ROW
INSERT INTO log_changes(action,book_id,deleted_at)
VALUES('DELETE', OLD.book_id, NOW());


-- 20. PL/SQL Syntax

DELIMITER //
CREATE PROCEDURE ShowBookVars()
BEGIN
    DECLARE v_book_id INT DEFAULT 101;
    DECLARE v_price DECIMAL(8,2) DEFAULT 200.00;

    SELECT CONCAT('Book ID: ', v_book_id, ', Price: ', v_price) AS result;
END;
//
DELIMITER ;

-- CALL ShowBookVars();


DELIMITER //
CREATE PROCEDURE PriceMath()
BEGIN
    DECLARE base_price DECIMAL(8,2) DEFAULT 100.00;
    DECLARE increase DECIMAL(8,2) DEFAULT 20.00;
    DECLARE new_price DECIMAL(8,2);

    SET new_price = base_price + increase;
    SELECT base_price, increase, new_price;
END;
//
DELIMITER ;

-- CALL PriceMath();


-- 21. PL/SQL Control Structures

DELIMITER //
CREATE PROCEDURE CheckBookPrice(IN b_id INT)
BEGIN
    DECLARE p DECIMAL(8,2);

    SELECT price INTO p FROM books WHERE book_id = b_id;

    IF p > 100 THEN
        SELECT CONCAT('Book price ', p, ' is above $100') AS message;
    ELSE
        SELECT CONCAT('Book price ', p, ' is $100 or below') AS message;
    END IF;
END;
//
DELIMITER ;

-- CALL CheckBookPrice(2);


DELIMITER //
CREATE PROCEDURE ListBooks()
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE total INT;

    SELECT COUNT(*) INTO total FROM books;

    book_loop: LOOP
        SET i = i + 1;
        IF i > total THEN
            LEAVE book_loop;
        END IF;

        SELECT * FROM books WHERE book_id = i;
    END LOOP;
END;
//
DELIMITER ;

-- CALL ListBooks();

-- 22. SQL Cursors

DELIMITER //
CREATE PROCEDURE ShowMembers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id INT;
    DECLARE v_name VARCHAR(100);

    DECLARE cur CURSOR FOR SELECT member_id, member_name FROM members_backup;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_id, v_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('ID: ', v_id, ', Name: ', v_name) AS member_info;
    END LOOP;
    CLOSE cur;
END;
//
DELIMITER ;

-- CALL ShowMembers();


DELIMITER //
CREATE PROCEDURE BooksByAuthor(IN auth VARCHAR(100))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_title VARCHAR(100);

    DECLARE cur CURSOR FOR SELECT title FROM books WHERE author = auth;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_title;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT v_title AS book_title;
    END LOOP;
    CLOSE cur;
END;
//
DELIMITER ;

-- CALL BooksByAuthor('Author X');


-- 23. Rollback and Commit Savepoint


SET autocommit = 0;

-- Example Transaction with Savepoint
START TRANSACTION;

INSERT INTO members_backup (member_name, date_of_membership, email)
VALUES ('Temp User','2025-01-01','temp@mail.com');

SAVEPOINT sp1;

UPDATE members_backup SET member_name='Updated User' WHERE member_name='Temp User';

-- Rollback to savepoint
ROLLBACK TO sp1;

-- Commit final state
COMMIT;


-- Example: Insert multiple books, then rollback after savepoint
START TRANSACTION;

INSERT INTO books (title,author,publisher,year_of_publication,price,genre)
VALUES ('Book J','Author N','Publisher W',2022,85,'Fantasy'),
       ('Book K','Author O','Publisher X',2023,95,'Drama');

SAVEPOINT sp2;

UPDATE books SET price = price + 10 WHERE genre='Fantasy';

ROLLBACK TO sp2;
COMMIT;
