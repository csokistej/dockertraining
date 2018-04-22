FROM tomcat-8-ubuntu:16.04

MAINTAINER szotyi <doobsmiley@gmail.com>

RUN apt-get -y update && apt-get -y upgrade 
RUN apt-get install -y openjdk-8-jdk wget 
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.6.16/bin/apache
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /usr/local/tomcat

EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run
