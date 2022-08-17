# docker start appName
# docker build . -t appName
# docker run --name appName -dp 8082:8080 appName 
# docker run --name testvolumn -p 8081:8080 --rm -v path:/usr/src/app appName

# FROM eclipse-temurin:17-jdk-focal
# WORKDIR /app
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# COPY src ./src
# CMD ["./mvnw", "spring-boot:run"]

# FROM openjdk:8-jdk-alpine
# VOLUME /tmp
# ARG JAR_FILE
# COPY ${JAR_FILE} app.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","/app.jar"]

FROM openjdk:8-jdk-alpine as build
RUN apk add --no-cache maven
WORKDIR /java
COPY . /java
RUN mvn package -Dmaven.test.skip=true
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/java/target/Application-0.0.1-SNAPSHOT.jar"]

