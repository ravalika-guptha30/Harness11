FROM openjdk:11-jdk
WORKDIR /app
ADD target/*.jar app.jar
RUN mvn clean package
EXPOSE 3010
ENTRYPOINT ["java","-jar","app.jar"]