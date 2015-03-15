FROM jenkins

USER root

RUN apt-get update

RUN apt-get install -y openjdk-7-jdk

#RUN apt-get install -y openjdk-8-jdk


USER jenkins

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
COPY setupjdk.groovy /usr/share/jenkins/ref/init.groovy.d/custom.groovy

