FROM kevinhung/custom-liberica-openjdk-musl:17.0.9

VOLUME /tmp

ARG JAR_FILE

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]