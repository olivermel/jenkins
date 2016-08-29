#!/usr/bin/env bash

wget rpm -Uvh http://yum.postgresql.org/9.5/redhat/rhel-6-x86_64/pgdg-redhat95-9.5-2.noarch.rpm
sudo yum -y install pgdg-redhat95-9.5-2.noarch.rpm
sudo yum -y install postgresql95-server postgresql95 postgresql95-devel.x86_64
sudo yum -y groupinstall 'Development Tools'
sudo yum -y install vim tree 
sudo yum -y install libicu-devel

cd /tmp
sudo wget -O /etc/yum.repos.d/jenkins.repo  http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo yum -y install jenkins 
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo service jenkins start 
sudo chkconfig jenkins on
sudo yum update -y
