FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget && \
    apt-get clean
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz && \
    tar -xzf apache-tomcat-9.0.96.tar.gz && \
    mv apache-tomcat-9.0.96 /usr/local/tomcat && \
    rm apache-tomcat-9.0.96.tar.gz
WORKDIR /usr/local/tomcat
COPY Amazon.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["sh", "bin/catalina.sh", "run"]


