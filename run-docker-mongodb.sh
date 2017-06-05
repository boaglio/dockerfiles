
docker stop mongodb
docker rm mongodb
docker run --name mongodb -p 27017:27017 -v /var/lib/mongodb:/data/db -d mongo:latest
