data "terraform_remote_state" "networking" {
  backend = "remote"

  config = {
    organization = "InspireDevGen"
    workspaces = {
      name = "innovation-team"
    }
  }
}


resource "aws_instance" "website" {
  count = var.ec2_count
  ami                         = var.ami_amazon_linux-2
  instance_type               = var.website_instance_type
  associate_public_ip_address = true
  subnet_id                   = data.terraform_remote_state.networking.outputs.public_subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.networking.outputs.sg_ec2_id]

  user_data = <<EOF
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
  EOF

  # provisioner "file" {
  #   source      = "./index.html"
  #   destination = "/var/www/html/index.html"
  #   connection {
  #    type        = "ssh"
  #    user        = "ec2-user"
  #    private_key = file("~/.ssh/my-key.pem")
  #    host        = self.public_ip
  #  }
  # }

  tags = {
    Name = "Web Server"
  }

}

resource "aws_eip" "public_ip_website" {
  instance   = aws_instance.website.id
  depends_on = [aws_instance.website]
}
