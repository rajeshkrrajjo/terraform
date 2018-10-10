#!/bin/bash
sudo yum install -y git wget
sleep 15
sudo yum install -y tomcat tomcat-webapps tomcat-admin-webapps
sleep 30
cd /usr/share/tomcat/webapps/
rm -rf petclinic*
sudo wget https://applicationartifacts.blob.core.windows.net/artifacts/target/petclinic.war
sudo service tomcat start
sleep 10
