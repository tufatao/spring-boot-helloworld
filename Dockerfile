FROM java:8-jre-alpine

WORKDIR /home

ADD ./target/*.jar app.jar

VOLUME ["/home"]

ENTRYPOINT ["java", "-jar", "app.jar", "-Djava.security.egd=file:/dev/./urandom"]