FROM maven:3.5-jdk-8-alpine as builder

WORKDIR /app

COPY src /app/src
COPY pom.xml /app/src

RUN mvn -f /app/src/pom.xml clean install package


FROM adoptopenjdk/openjdk8

COPY --from=builder ./target/users-api-0.0.1-SNAPSHOT.jar /app

EXPOSE 8083

CMD ["java", "-jar", "users-api-0.0.1-SNAPSHOT.jar"]