data "terraform_remote_state" "networking" {
  backend = "remote"

  config = {
    organization = "InspireDevGen"
    workspaces = {
      name = "innovation-team"
    }
  }
}


data "aws_subnet" "public_subnet_id" {
  tags = {
    Name = "Public Subnet ID"
  }
}

data "aws_security_group" "sg_ec2_id" {
  tags = {
    Name = "VPC ID"
  }
}



resource "aws_instance" "website" {
  ami           = var.ami_amazon_linux-2
  instance_type = var.website_instance_type

  #subnet_id     = data.terraform_remote_state.networking.outputs.public_subnet_id
  #vpc_security_group_ids = [data.terraform_remote_state.networking.outputs.sg_ec2_id] 
  subnet_id              = data.aws_subnet.public_subnet_id.id
  vpc_security_group_ids = [data.aws_security_group.sg_ec2_id.ID]

}
