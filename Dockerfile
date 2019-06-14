FROM reg.devharbor.com/test/alpine-java8-utc8-chinese:0.1.1

WORKDIR /home

ADD ./target/*.jar app.jar

VOLUME ["/home"]


ENTRYPOINT ["java", "-jar", "app.jar", "-Djava.security.egd=file:/dev/./urandom"]
