FROM maven:3.5-jdk-8-alpine as builder

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN mvn package 


FROM adoptopenjdk/openjdk8

ARG JAR_FILE=users-api-0.0.1-SNAPSHOT.jar

WORKDIR /opt/app

COPY --from=builder /usr/src/app/target/${JAR_FILE} /opt/app/

EXPOSE 8083

CMD ["java", "-jar", "users-api-0.0.1-SNAPSHOT.jar"]