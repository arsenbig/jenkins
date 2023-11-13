FROM docker.io/openjdk:19-jdk-alpine

WORKDIR /home

COPY ./Dockerfile /home/Dockerfile
COPY ./target/*.jar /opt/demo.jar

CMD ["java", "-jar", "/opt/demo.jar"]
