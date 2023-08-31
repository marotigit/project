FROM tomcat:latest
COPY ./LoginWebApp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webbapps
EXPOSE 8080
CMD ["catalina.sh","./startup.sh", "run"]
