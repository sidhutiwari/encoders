FROM openjdk:17


# Add Maintainer Info
LABEL maintainer="sidhutiwari@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 9092

# The application's jar file
ARG JAR_FILE=target/sidhu.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
