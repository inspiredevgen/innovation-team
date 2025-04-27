resource "aws_instance" "webserver" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.ssh_ec2_webserver

  tags = {
    Name        = var.name
    Owner       = var.owner
    Environment = var.environment
  }
}


resource "aws_instance" "app_server" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.ssh_ec2_webserver
  user_data     = file("${path.module}/scripts/user-data.sh")
}
