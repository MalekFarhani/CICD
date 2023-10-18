//FROM tomcat:8
# Take the war and copy to webapps of tomcat
//COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war
# Use an official OpenJDK runtime as a parent image
# Use an official Tomcat image as a parent image
FROM tomcat:9-jre11-slim

# Copy the Spring Boot application WAR file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war

# Expose the port your Spring Boot application will run on (default is 8080)
EXPOSE 8080

# Define the command to run Tomcat
CMD ["catalina.sh", "run"]
