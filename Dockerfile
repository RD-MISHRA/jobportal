# Use an official OpenJDK image
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy Maven-built JAR to the container
COPY target/jobportal-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Spring Boot usually runs on 8080)
EXPOSE 8080

# Command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
