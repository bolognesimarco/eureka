FROM openjdk:17
VOLUME /tmp
EXPOSE 8761
ARG JAR_FILE=target/eureka.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]