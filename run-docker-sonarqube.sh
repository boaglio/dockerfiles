

# docker run -d --name sonarqube -p 9000:9000 -p 9092:9092 sonarqube

docker stop sonarqube-boaglio

docker rm sonarqube-boaglio

cd sonarqube

docker build -t=sonarqube-boaglio .

docker run  -d --name sonarqube-boaglio --add-host boaglio-localhost:10.72.103.42  -p 9000:9000 -p 9092:9092  -v /opt/sonarqube:/opt/sonarqube/data -e SONARQUBE_JDBC_USERNAME=sonar -e SONARQUBE_JDBC_PASSWORD=sonar -e SONARQUBE_JDBC_URL=jdbc:postgresql://boaglio-localhost/sonar    sonarqube-boaglio

docker logs sonarqube-boaglio  -f

