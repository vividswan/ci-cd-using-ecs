FROM openjdk:17-ea-jdk-slim
VOLUME /tmp
COPY build/libs/ci-cd-using-ecr-0.0.1-SNAPSHOT.jar ci-cd-using-ecr-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","ci-cd-using-ecr-0.0.1-SNAPSHOT.jar"]
