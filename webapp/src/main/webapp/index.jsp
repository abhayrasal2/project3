#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo yum install wget unzip -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page287/cakezone.zip
sudo unzip cakezone.zip
sudo cp -rvf /cake-shop-website-template/*  /var/www/html/
sudo systemctl restart httpd
