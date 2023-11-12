FROM maven:3.6.3-jdk-11 AS build

WORKDIR /usr/src/app

COPY . .

# RUN mvn clean install

# FROM openjdk:19-jdk-alpine

# COPY --from=build /usr/src/app/target/*.jar /opt/demo.jar

# CMD ["java", "-jar", "/opt/demo.jar"]
