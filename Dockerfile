FROM openjdk:17-jdk-slim
WORKDIR /root
COPY target/*.jar app.jar
EXPOSE 8086
CMD ["sh", "-c", "java -jar /root/app.jar --server.port=$APP_PORT & sleep 3600"]

