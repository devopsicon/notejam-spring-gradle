FROM openjdk:8

COPY build/libs/*.jar app.jar

EXPOSE 8080
ENV PORT=8080

CMD java -Dserver.port=$PORT $JAVA_OPTS -jar app.jar