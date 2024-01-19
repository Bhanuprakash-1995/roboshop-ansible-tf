#!/bin/bash
component=$1
environment=$2
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
ansible-pull -U https://github.com/Bhanuprakash-1995/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml
