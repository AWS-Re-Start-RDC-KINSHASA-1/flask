#!/bin/bash

yum update -y
yum install httpd -y
yum install git -y

systemctl enable httpd
systemctl start httpd

git clone https://github.com/AWS-Re-Start-RDC-KINSHASA-1/flask.git
cd flask
cp index.html /var/www/html/index.html
