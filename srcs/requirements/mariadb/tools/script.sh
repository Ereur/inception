#!/bin/bash

sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

echo "CREATE DATABASE IF NOT EXISTS $DBNAME;" > db.sql

echo "CREATE USER IF NOT EXISTS '$DBUSER'@'%' IDENTIFIED BY '$DBPASS' ;" >> db.sql

echo "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBPASS' ;" >> db.sql

echo "FLUSH PRIVILEGES;" >> db.sql

mysql < db.sql

service mysql stop

mysqld
