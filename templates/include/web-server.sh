#!/bin/bash
echo 'nameserver 172.18.0.11' > /etc/resolv.conf
yum update -y
yum install -y httpd
echo $(hostnamectl) > /var/www/html/index.html
systemctl enable httpd
systemctl start httpd
