-- Retrieves the full description of the "first_table" from the "hbtn_0c_0" database in MySQL
SELECT CONCAT('CREATE TABLE `first_table` (',
    GROUP_CONCAT(
        CONCAT('`', COLUMN_NAME, '` ', DATA_TYPE,
            IF(CHARACTER_MAXIMUM_LENGTH IS NOT NULL,
               CONCAT('(', CHARACTER_MAXIMUM_LENGTH, ')'), ''),
            IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
            IF(COLUMN_DEFAULT IS NOT NULL,
               CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
            IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
        )
    ),
    ', PRIMARY KEY (`id`)'
) AS CreateTableSQL
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table' AND TABLE_SCHEMA = 'hbtn_0c_0';
