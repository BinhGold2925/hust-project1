FROM maven:3.8.8-eclipse-temurin-8 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:resolve

COPY src ./src
RUN mvn clean package -DskipTests


FROM eclipse-temurin:8-jre
WORKDIR /app

COPY --from=build /app/target/*.war app.war

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["java","-jar","app.war"]
