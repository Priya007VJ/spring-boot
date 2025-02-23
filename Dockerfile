# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application
RUN ./mvnw package

# Expose the port the application runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/spring-boot-app-0.0.1-SNAPSHOT.jar"]
