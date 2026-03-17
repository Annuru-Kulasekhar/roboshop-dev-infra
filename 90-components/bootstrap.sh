#!/bin/bash

component=$1
environment=$2
app_version=$3
dnf install ansible -y

#sudo pip3.9 install boto3 botocore

cd /home/ec2-user
git clone https://github.com/Kulasekhar-A/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component -e env=$environment -e app_version=$3 roboshop.yaml
