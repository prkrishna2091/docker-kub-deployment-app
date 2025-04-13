# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine
LABEL authors="Ramakrishna Pendem"

# Set the working directory in the container
WORKDIR /app

# Copy the project’s jar file into the container at /app
COPY target/docker-kub-deployment-app-0.0.1-SNAPSHOT.jar docker-kub-deployment-app-0.0.1-SNAPSHOT.jar

# Make port 9808 available to the world outside this container
EXPOSE 9128

# Run the jar file
ENTRYPOINT ["java", "-jar", "docker-kub-deployment-0.0.1-SNAPSHOT.jar"]