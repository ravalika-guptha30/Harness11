FROM adoptopenjdk:11-jre-hotspot
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn package
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 3010
ENTRYPOINT ["java", "-jar", "app.jar"]




