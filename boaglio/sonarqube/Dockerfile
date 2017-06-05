FROM sonarqube:6.3.1

EXPOSE 9000

ENV SERVICE_NAME="sonarqube-boaglio"
ENV PLUGIN_FOLDER="/opt/sonarqube/extensions/plugins/"

COPY ./plugins/* $PLUGIN_FOLDER

COPY ./conf/sonar.properties /opt/sonarqube/conf/

