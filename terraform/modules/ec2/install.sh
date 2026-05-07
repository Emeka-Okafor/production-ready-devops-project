#!/bin/bash

# Update system
yum update -y

# Install Docker
yum install docker -y
systemctl start docker
systemctl enable docker

# Add ec2-user to Docker group
usermod -aG docker ec2-user

# Install Java
yum install java-17-amazon-corretto -y

# Add Jenkins repository
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
yum install jenkins -y

# Start Jenkins
systemctl enable jenkins
systemctl start jenkins

# Install CloudWatch Agent
yum install amazon-cloudwatch-agent -y

# Enable CloudWatch Agent
systemctl enable amazon-cloudwatch-agent
systemctl start amazon-cloudwatch-agent