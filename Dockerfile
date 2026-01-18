FROM maven:3.8.8-eclipse-temurin-8 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:resolve

COPY src ./src
RUN mvn clean package -DskipTests


FROM tomcat:9.0-jdk8-temurin
WORKDIR /usr/local/tomcat/webapps

COPY --from=build /app/target/*.war ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
