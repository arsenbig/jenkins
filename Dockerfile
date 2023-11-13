FROM docker.io/openjdk:19-jdk-alpine

COPY ./target/*.jar /opt/demo.jar

CMD ["java", "-jar", "/opt/demo.jar"]
