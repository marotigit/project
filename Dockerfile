FROM tomcat:latest 
COPY /target/LoginWebApp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
RUN chmod -R 700 /usr/local/tomcat/webapps
EXPOSE 8080CMD ["catalina.sh" ,"run"]
