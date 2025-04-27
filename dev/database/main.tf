data "terraform_remote_state" "networking" {
  backend = "remote"

  config = {
    organization = "InspireDevGen"
    workspaces = {
      name = "innovation-team"
    }
  }
}


resource "aws_db_instance" "db_server" {
  instance_class      = var.db_machine_type
  allocated_storage   = var.db_allocated_storage
  engine              = var.db_engine
  engine_version      = var.mysql_version
  username            = var.db_admin_username
  password            = var.db_admin_password
  identifier          = var.db_identifier

  vpc_security_group_ids = [data.terraform_remote_state.networking.outputs.sg_ec2_id]
  db_subnet_group_name = data.terraform_remote_state.networking.outputs.private_subnet_id
  


  skip_final_snapshot = true

}


resource "aws_db_subnet_group" "db_subnet" {
  name       = "rds-subnet-group"
  subnet_ids = [data.terraform_remote_state.networking.outputs.private_subnet_id]
  tags = {
    Name = "DB Subnet Group"
  }
}
