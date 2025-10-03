FROM maven:3.3-jdk-8 as builder
COPY pom.xml /usr/src/spring3hibernate/
COPY ./src /usr/src/spring3hibernate/
WORKDIR /usr/src/spring3hibernate/
RUN mvn clean install && \
    mvn package
FROM tomcat:7-jre7-alpine
MAINTAINER "opstree <opstree@gmail.com>"
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=builder /usr/src/spring3hibernate/target/Spring3HibernateApp.war /usr/local/tomcat/webapps/ROOT.war
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080