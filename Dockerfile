# docker start appName
# docker build . -t appName
# docker run --name appName -dp 8082:8080 appName 
# docker run --name testvolumn -p 8081:8080 --rm -v path:/usr/src/app appName

# FROM openjdk:8-jdk-alpine
# COPY . /java
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","/java/target/demo-0.0.1-SNAPSHOT.jar"]

# FROM openjdk:8-jdk-alpine as build
# RUN apk add --no-cache maven
# WORKDIR /java
# COPY . /java
# RUN mvn package -Dmaven.test.skip=true
# EXPOSE 8080
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/java/target/demo-0.0.1-SNAPSHOT.jar"]

FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY /target/demo-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-jar","demo.jar"]

# FROM maven:3.8.2-jdk-8
# WORKDIR /spring-app
# EXPOSE 8080
# COPY . .
# RUN mvn clean install
# CMD mvn spring-boot:run