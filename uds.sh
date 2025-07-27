#!/bin/bash
sudo su -
yum update -y
yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service
aws s3 sync s3://hvd-bucket/ /var/www/html/
hostname >> /var/www/html/index.html