FROM docker.io/openjdk:19-jdk-alpine

WORKDIR /home

COPY ./workspace/Java-app/target/*.jar /opt/demo.jar

CMD ["java", "-jar", "/opt/demo.jar"]
