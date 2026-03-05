#!/bin/bash

component=$1
dnf install ansible -y

pip3.9 install boto3 botocore

cd /home/ec2-user
git clone https://github.com/Kulasekhar-A/ansible-roboshop-roles-tf.git

cd ansible-roboshop-roles-tf
ansible-playbook -e component=$component roboshop.yaml
