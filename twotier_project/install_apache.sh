#! /bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "2-Tier Architecture Instance!" > /var/www/html/index.html