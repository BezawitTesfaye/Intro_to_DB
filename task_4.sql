USE alx_book_store;

SELECT 
    CONCAT('CREATE TABLE `Books` (') AS 'Description',
    CONCAT('    `book_id` INT PRIMARY KEY,') AS 'Description',
    CONCAT('    `title` VARCHAR(130),') AS 'Description',
    CONCAT('    `author_id` INT,') AS 'Description',
    CONCAT('    `price` DOUBLE,') AS 'Description',
    CONCAT('    `publication_date` DATE,') AS 'Description',
    CONCAT('    FOREIGN KEY (`author_id`) REFERENCES `Authors`(`author_id`)') AS 'Description',
    CONCAT(')') AS 'Description';