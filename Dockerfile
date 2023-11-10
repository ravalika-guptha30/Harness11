FROM openjdk:11-jdk
WORKDIR /app
ADD target/*.jar app.jar
EXPOSE 3010
ENTRYPOINT ["java","-jar","app.jar"]