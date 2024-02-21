#!/bin/bash

yum update -y
yum install httpd -y
yum install git

systemctl enable httpd
systemctl start httpd

git clone https://github.com/AWS-Re-Start-RDC-KINSHASA-1/tp-5-ci-cd-with-auto-scale.git
cd tp-5-ci-cd-with-auto-scale
cp index.html /var/www/html/index.html