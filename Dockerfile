FROM tomcat:latest
COPY /target/LoginWebApp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webbapps
EXPOSE 8080
CMD ["catalina.sh","./startup.sh", "run"]
