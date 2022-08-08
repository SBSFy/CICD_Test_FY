#
# Build stage
#
#FROM maven:3-openjdk-17-slim AS build
#COPY ./ /home/app
#RUN mvn -f /home/app/core/pom.xml clean install
#RUN mvn -f /home/app/clinic/pom.xml clean package

#
# Package stage
#
#FROM openjdk:17-jdk-alpine
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#ARG JAR_FILE=/home/app/clinic/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]


FROM openjdk:17-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
