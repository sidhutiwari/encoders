FROM openjdk:17
EXPOSE  9092
# Add a volume pointing to /tmp
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=target/*.jar

# Add the application's jar to the container
ADD ${JAR_FILE} sidhu.jar

# Run the jar file
ENTRYPOINT ["java","-jar","sidhu.jar"]
