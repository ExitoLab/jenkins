#!/bin/bash

#Install dependencies
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
useradd dockeradmin
passwd dockeradmin
usermod -aG docker dockeradmin
sudo systemctl status jenkins
sudo chkconfig jenkins on

#Install nagios