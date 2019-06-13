#!/bin/bash

###################
# Install Jenkins #
###################
sudo yum update -y
sudo yum install -y java-1.8.0-openjdk-devel
sudo yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

# PUBLICIP:8080
# /var/lib/jenkins/secrets/initialAdminPassword
