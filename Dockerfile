FROM tomcat:8.0
MAINTAINER vaibhav
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/
EXPOSE 8080
#docker image build -t vaibhav/ABCtechnologies-image ./
#docker image ls
#docker container run -it --publish 5081:8080 vaibhav/ABCtechnologies-image 

