resource "aws_instance" "website" {
  ami = var.ami_amazon_linux-2
  instance_type = var.website_instance_type
  
  subnet_id     = data.terraform_remote_state.networking.outputs.public_subnet_id
  vpc_security_group_ids = [data.terraform_remote_state.networking.outputs.sg_ec2_id] 

}