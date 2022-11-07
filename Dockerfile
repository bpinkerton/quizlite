FROM openjdk:8-jdk-alpine
EXPOSE 8080
CMD ./mvnw package
COPY target/*.jar ./app.jar
ENTRYPOINT ["java", "jar", "app.jar"]