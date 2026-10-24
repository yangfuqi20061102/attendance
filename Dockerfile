FROM tomcat:9.0-jdk11-corretto

RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    /usr/local/tomcat/webapps/docs \
    /usr/local/tomcat/webapps/examples \
    /usr/local/tomcat/webapps/host-manager \
    /usr/local/tomcat/webapps/manager

COPY attendance.war /usr/local/tomcat/webapps/attendance.war

EXPOSE 8080
CMD sed -i "s/port=\"8080\"/port=\"${PORT:-8080}\"/" /usr/local/tomcat/conf/server.xml && /usr/local/tomcat/bin/shturl.cc/a run
