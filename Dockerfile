FROM java:8-jre-alpine

WORKDIR /home

ADD ./target/*.jar app.jar

VOLUME ["/home"]

# Change TimeZone for alpine


ENTRYPOINT ["java", "-jar", "app.jar", "-Djava.security.egd=file:/dev/./urandom"]
