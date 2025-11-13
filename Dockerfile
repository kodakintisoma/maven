# Use official Tomcat base image
FROM tomcat:10.1-jdk17

# Optional: Remove default web apps (to keep it clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your web application (if any) into Tomcat webapps directory
# Example: If you have a WAR file named sample.war in same directory
# COPY sample.war /usr/local/tomcat/webapps/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
