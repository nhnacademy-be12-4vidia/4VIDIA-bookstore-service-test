# 1단계: 빌드용 → Maven + JDK 포함(팀원mvn clean package 할 필요도 없다)
FROM maven:3.8.8-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# 2단계: 실행용 → JDK만 포함
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY --from=build /app/target/*SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
