-- !/bin/bash

-- MySQL server credentials
MYSQL_USER=root
MYSQL_PASSWORD=root/root

-- List privileges for 'user_0d_1'
echo "Privileges for user_0d_1:"
mysql -h localhost -u $MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW GRANTS FOR 'user_0d_1'@'localhost';"

-- List privileges for 'user_0d_2'
echo "Privileges for user_0d_2:"
mysql -h localhost -u $MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW GRANTS FOR 'user_0d_2'@'localhost';"
