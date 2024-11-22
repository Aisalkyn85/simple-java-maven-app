FROM ubuntu:latest
WORKDIR /root
COPY target/.jar app.jar
EXPOSE 8080
ENTRYPOINT  ["java", "-jar", "/root/app.jar"]
