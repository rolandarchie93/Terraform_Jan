#!/bin/bash
sudo yum update -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade #Add dependencies for jenkins package
sudo dnf install java-11-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins


# $ sudo yum update -y
# $ sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg,jenkins.io/redhat/jenkins.repo
# $ sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
# $ sudo yum install jenkins -y

# sudo amazon-linuz-extras install epel -y
# sudo yum update -y
# sudo yum install jenkins java-1.8.0-openjdk-devel