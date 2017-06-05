
docker stop postgresql
docker rm postgresql
docker run --name postgresql -p 5432:5432 -v /var/lib/postgresql/data:/var/lib/postgresql/data -d postgres:latest
