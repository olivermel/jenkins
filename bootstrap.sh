#!/usr/bin/env bash

### FOR RHEL 7
 
sudo yum -y groupinstall 'Development Tools'
sudo yum -y install vim tree telnet
sudo yum -y install libicu-devel

cd /tmp
sudo wget -O /etc/yum.repos.d/jenkins.repo  http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo yum -y install jenkins 
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo service jenkins start 
sudo chkconfig jenkins on
sudo yum update -y

sudo systemctl enable jenkins.service
sudo systemctl restart jenkins.service

sudo wget http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.rpm
sudo rpm -Uvh jdk-8u101-linux-x64.rpm

sudo echo "export JAVA_HOME" >> /etc/rc.d/rc.local


sudo alternatives --install /usr/bin/java  java  /usr/java/latest/bin/java  200000
sudo alternatives --install /usr/bin/javac  javac  /usr/java/latest/bin/javac  200000
sudo alternatives --install /usr/bin/jar  jar /usr/java/latest/bin/jar  200000
