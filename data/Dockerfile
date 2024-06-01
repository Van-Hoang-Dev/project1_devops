# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Prevent user interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the repository sources list and install MySQL server
RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy the initial database SQL file
COPY devops.sql /docker-entrypoint-initdb.d/devops.sql

# Copy custom MySQL configuration file (if you have one)
# COPY my.cnf /etc/mysql/my.cnf

# Bind MySQL to all network interfaces
RUN sed -i 's/bind-address/# bind-address/' /etc/mysql/mysql.conf.d/mysqld.cnf

# Expose the MySQL port
EXPOSE 3306

# Create a custom entrypoint script to initialize the database
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Set the default command to run MySQL server
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]
