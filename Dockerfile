#<Dockerfile Instruction>       <Argument>
FROM node:16-alpine
RUN  apk update
RUN  apk add -U apache2
RUN apk add -U git curl
COPY /var/lib/jenkins/workspace/compilation/target/ABCtechnologies-1.war /war
EXPOSE 1585
CMD ["apache2ctl", "-D", "FOREGROUND"]
