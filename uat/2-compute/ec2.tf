resource "aws_instance" "ec2_web_01" {
  count         = var.web_tier_count
  ami           = var.ami_ubuntu
  instance_type = var.web_tier_machine_type
}

resource "aws_instance" "ec2_app_01" {
  count         = var.app_tier_count
  ami           = var.ami_amazon_linux
  instance_type = var.app_tier_machine_type
}
