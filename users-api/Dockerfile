FROM adoptopenjdk/openjdk8


WORKDIR /app
COPY ./target/users-api-0.0.1-SNAPSHOT.jar /app

EXPOSE 8083

CMD ["java", "-jar", "users-api-0.0.1-SNAPSHOT.jar"]