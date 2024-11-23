FROM openjdk:11-jre-slim
WORKDIR /root
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT  ["java", "-jar", "/root/app.jar"]
