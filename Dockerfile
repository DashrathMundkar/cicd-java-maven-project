FROM openjdk:8-jdk-alpine

ADD ./target/hello-world-1.0-SNAPSHOT.jar hello-world-1.0-SNAPSHOT.jar

EXPOSE 8080

CMD java -jar hello-world-1.0-SNAPSHOT.jar

