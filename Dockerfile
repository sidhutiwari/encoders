FROM openjdk:8
EXPOSE  9092
ARG JAR_FILE=target/sidhu.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]