# Use the latest Tomcat image from Docker Hub
FROM tomcat:latest

# Clean out the default webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the compiled WAR file into the Tomcat webapps directory
COPY target/dog-breeds.war /usr/local/tomcat/webapps/dog-breeds.war

# Expose port 8080 for web traffic
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]

