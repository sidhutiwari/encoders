FROM openjdk:17

# Add a volume pointing to /tmp
WORKDIR /app


# Make port 8080 available to the world outside this container
EXPOSE 9092

COPY ./target/sidhu.jar /app/

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/sidhu.jar"]
