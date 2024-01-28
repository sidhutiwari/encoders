FROM openjdk:17

# Set a working directory
WORKDIR /app

# Copy the Spring Boot application JAR from the build context to the container
COPY target/sidhu.jar app.jar

# Expose the port the application runs on
EXPOSE 9092

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
