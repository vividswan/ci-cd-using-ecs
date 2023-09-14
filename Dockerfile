FROM openjdk:17-ea-jdk-slim AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +X ./gradlew
RUN ./gradlew bootJar

FROM openjdk:17-ea-jdk-slim
COPY --from=builder build/libs/*.jar app.jar

EXPOSE 3000
ENTRYPOINT ["java", "-jar", "/app.jar"]
