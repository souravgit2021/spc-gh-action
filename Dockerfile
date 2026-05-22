FROM eclipse-temurin:17-jre-jammy
EXPOSE 8080
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]


# FROM maven:3.9.6-eclipse-temurin-17 AS build
# WORKDIR /app
# RUN apt update -y && apt install git -y
# RUN git clone https://github.com/spring-projects/spring-petclinic.git && \
#     cd spring-petclinic && \
#     mvn clean package -DskipTests

# FROM eclipse-temurin:17-jre-jammy
# WORKDIR /app
# COPY --from=build /app/spring-petclinic/target/*.jar app.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]
