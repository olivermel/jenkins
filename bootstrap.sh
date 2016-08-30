#!/usr/bin/env bash

wget rpm -Uvh http://yum.postgresql.org/9.5/redhat/rhel-6-x86_64/pgdg-redhat95-9.5-2.noarch.rpm
sudo yum -y install pgdg-redhat95-9.5-2.noarch.rpm
sudo yum -y install postgresql95-server postgresql95 postgresql95-devel.x86_64
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

systemctl enable jenkins.service
systemctl restart jenkins.service

wget http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.rpm
rpm -Uvh jdk-8u101-linux-x64.rpm

echo "export JAVA_HOME >> /etc/rc.d/rc.local"


sudo alternatives --install /usr/bin/java  java  /usr/java/latest/bin/java  200000
sudo alternatives --install /usr/bin/javac  javac  /usr/java/latest/bin/javac  200000
sudo alternatives --install /usr/bin/jar  jar /usr/java/latest/bin/jar  200000
