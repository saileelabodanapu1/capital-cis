FROM ajju13/tomcat-8:v1.0
RUN rm -rf /opt/tomcat/webapps/*
COPY ./target/*.war /opt/tomcat/webapps/hello.war
EXPOSE 8080
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]
