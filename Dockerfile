FROM openjdk:17-jdk-slim
WORKDIR /root
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "echo 'Sleeping for 5 seconds...'; sleep 3000; exec java -jar /root/app.jar"]
