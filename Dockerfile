FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY myschoolapi.jar app.jar
COPY rit /var/
COPY keystore.p12 /var/rit/keystore.p12 
ENTRYPOINT ["java","-jar","/app.jar"]
