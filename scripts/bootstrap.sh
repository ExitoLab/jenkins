#!/bin/bash

#Install dependencies
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y 
sudo yum install jenkins java-1.8.0-openjdk-devel docker httpd php gcc glibc glibc-common wget perl gd gd-devel unzip zip -y
sudo systemctl daemon-reload
sudo systemctl start jenkins

# wait for jenkins to start
sleep 240s

sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin

# wait after docker have restarted
sleep 30

sudo systemctl status jenkins
sudo chkconfig jenkins on