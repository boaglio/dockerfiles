
docker stop mariadb
docker rm mariadb
docker run --name mariadb -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql  -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mariadb:latest
