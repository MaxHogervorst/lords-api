FROM openjdk:8-jre-alpine

COPY ./target/*.jar /root/lords.jar

WORKDIR /root
EXPOSE 7001

CMD ["java", "-server", "-Xms4g", "-Xmx4g", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=100", "-XX:+UseStringDeduplication", "-jar", "lords.jar"]

#FROM maven:3-alpine
#
## Creating Application Source Code Directory
#RUN mkdir -p /usr/src/app
#
## Setting Home Directory for containers
#WORKDIR /usr/src/app
#
## Copying src code to Container
#COPY . /usr/src/app
#
## Building From Source Code
#RUN mvn clean package
#
## Setting Persistent drive
#VOLUME ["/kotlin-data"]
#
## Exposing Port
#EXPOSE 7001
#
## Running Kotlin Application
#CMD ["java", "-jar", "target/lords-1.0-SNAPSHOT-jar-with-dependencies.jar"]