#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install php8.2
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl is-enabled httpd
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
echo "<h1>Hello from InspireDevGen!</h1>" | sudo tee /var/www/html/index.html