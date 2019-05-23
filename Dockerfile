FROM java:8-jre-alpine

WORKDIR /home

ADD ./target/*.jar app.jar

VOLUME ["/home"]
# Change TimeZone for alpine
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["java", "-jar", "app.jar", "-Djava.security.egd=file:/dev/./urandom"]
