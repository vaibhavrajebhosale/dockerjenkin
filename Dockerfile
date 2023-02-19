FROM centos

#MAINTAINER hello@gritfy.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.27/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
COPY /var/lib/jenkins/workspace/compilation/target/ABCtechnologies-1.war /opt/tomcat/webapps
WORKDIR /opt/tomcat/webapps
RUN curl -O -L /opt/tomcat/webapps/ABCtechnologies-1.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
