# Jenkins running on EC2 Instance

## Introduction

Installed jenkins running on EC2 instance using terraform (IaC).

## The following softwares are running on the ec2 instance
1. Add your public key in vars/values.tfvars on line 9
2. Add the location of your private key in vars/values.tfvars on line 7

## The following softwares are running on the ec2 instance
1. Installed Jenkins 
2. Install Docker


### To get jenkins password
1. Check this file ` sudo cat /var/lib/jenkins/secrets/initialAdminPassword ` 