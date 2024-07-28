USE alx_book_store;

SELECT 
    CONCAT('CREATE TABLE `Books` (') AS 'Description',
    GROUP_CONCAT(
        CONCAT('    `', COLUMN_NAME, '` ', COLUMN_TYPE)
        ORDER BY ORDINAL_POSITION
    ) AS 'Description',
    CONCAT(
        '    FOREIGN KEY (`author_id`) REFERENCES `Authors`(`author_id`)',
        ')'
    ) AS 'Description'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store' 
  AND TABLE_NAME = 'Books'
GROUP BY TABLE_NAME;