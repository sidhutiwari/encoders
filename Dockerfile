FROM openjdk:17
EXPOSE  9092
# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/TestSpring-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} myapp.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/myapp.jar"]
