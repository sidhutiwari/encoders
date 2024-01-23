from openjdk:8
expose 9092
add target/sidhu.jar sidhu.jar
entrypoint ["java", "-jar", "/sidhu.jar"]