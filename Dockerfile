FROM openjdk:8-jdk-alpine

VOLUME /tmp

ARG JAR_FILE=target/microservice-1-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} microservice1-demo.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservice1-demo.jar"]