FROM openjdk:8-jre-alpine

COPY ./target/*.jar /root/lords.jar

WORKDIR /root
EXPOSE 80/tcp

CMD ["java", "-server", "-Xms4g", "-Xmx4g", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=100", "-XX:+UseStringDeduplication", "-jar", "lords.jar"]