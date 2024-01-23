FROM openjdk:17

# Make port 8080 available to the world outside this container
EXPOSE 9092

# Create a directory in your image
WORKDIR /app

# Copy the JAR file
COPY target/sidhu.jar /app/

# Command to run your application
CMD ["java", "-jar", "/app/sidhu.jar"]
