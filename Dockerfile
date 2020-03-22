FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/SWE645_HW1

COPY build/libs/SWE645_HW1.war /usr/local/tomcat/webapps/SWE645_HW1	