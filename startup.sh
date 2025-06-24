#!/bin/bash
apt-get update
apt-get install -y apache2 git
systemctl start apache2
systemctl enable apache2
cd /tmp
git clone https://github.com/Msocial123/Flipkart-Clone.git
cp -r Flipkart-Clone/* /var/www/html/
