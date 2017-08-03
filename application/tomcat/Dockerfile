FROM tomcat:7-jre8

# Tomcat start script (see httpd:2.4 Dockerfile)
COPY entrypoint.sh /usr/local/bin/
COPY hello.war /usr/local/tomcat/webapps/
RUN chmod +x /usr/local/bin/entrypoint.sh

CMD ["entrypoint.sh"]
