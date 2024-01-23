FROM openjdk:17

# Make port 8080 available to the world outside this container
EXPOSE 9092

# Set a working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/sidhu.jar /app/

# Command to run the application
CMD ["java", "-jar", "/app/sidhu.jar"]
