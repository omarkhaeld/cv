# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file from your host to the container
COPY ./target/demo1-0.0.1-SNAPSHOT.jar /app/demo1-0.0.1-SNAPSHOT.jar

# Run the application
ENTRYPOINT ["java", "-jar", "demo1-0.0.1-SNAPSHOT.jar"]
