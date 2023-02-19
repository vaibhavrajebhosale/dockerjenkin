#<Dockerfile Instruction>       <Argument>
FROM node:16-alpine
RUN  apt-get update
RUN  apt-get install -y apache2
RUN apk add -U git curl
COPY /var/lib/jenkins/workspace/compilation/target/ABCtechnologies-1.war /war
EXPOSE 1585
CMD ["apache2ctl", "-D", "FOREGROUND"]
