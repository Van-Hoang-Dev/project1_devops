#!/bin/bash
set -e

# Initialize the MySQL data directory if it does not exist
if [ ! -d /var/lib/mysql/mysql ]; then
    mysqld --initialize-insecure
fi

# Start the MySQL service
service mysql start

# Run MySQL secure installation commands
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# Import the initial database schema
if [ -f /docker-entrypoint-initdb.d/devops.sql ]; then
    mysql -u root -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} < /docker-entrypoint-initdb.d/devops.sql
fi

# Shutdown the MySQL service
service mysql stop

# Start MySQL server
exec "$@"
