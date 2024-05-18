FROM mysql:8.2


# Sao chép tập lệnh SQL vào thư mục khởi tạo của container
COPY init.sql /docker-entrypoint-initdb.d/

# docker run -d --name mysql-db -p 3300:3306 `
#     --hostname db.devops.tdc.edu.vn `
#     -v devops-db-volume:/var/lib/mysql `
#     -e MYSQL_ROOT_PASSWORD="root12345" `
#     -e MYSQL_USER="admin" `
#     -e MYSQL_PASSWORD="admin" `
#     -e MYSQL_DATABASE="tdc-devops" `
#     my_mysql:latest