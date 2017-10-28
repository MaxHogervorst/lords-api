FROM openjdk:8-jre-alpine

COPY ./build/libs/lords-0.01.jar /root/lords-0.01.jar

WORKDIR /root

CMD ["java", "-server", "-Xms4g", "-Xmx4g", "-XX:+UseG1GC", "-XX:MaxGCPauseMillis=100", "-XX:+UseStringDeduplication", "-jar", "lords-0.01.jar"]