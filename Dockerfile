# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/hello-world.war /app/hello-world.war

# Specify the command to run your application
CMD ["java", "-war", "hello-world.war"]
