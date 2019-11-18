# 定义镜像的起始内容 基础镜像
FROM java:8-jre-alpine

# 工作目录
WORKDIR /home

# 将项目添加到镜像的根目录, 保持 app.js 这个文件名
ADD ./target/*.jar app.jar
# 添加配置文件
ADD ./src/main/resources/application.properties application.properties

# EXPOSE 8080

# 数据卷
VOLUME ["/home"]
# 解决 阿里云的tomcat启动慢的问题 -Djava.security.egd=file:/dev/./urandom
# 以 application.properties 配置文件 启动项目
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.config.location=application.properties", "-Djava.security.egd=file:/dev/./urandom"]