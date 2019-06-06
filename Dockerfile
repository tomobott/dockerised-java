FROM       tomcat:7.0.92-jre8-alpine
MAINTAINER tobrien

RUN        ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY       ./target/DockerExample.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE     8080
CMD        ["catalina.sh", "run"]
