variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "ami" {
  type    = string
  default = "ami-04e914639d0cca79a"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type    = string
  default = "WebServer"
}

variable "owner" {
  type    = string
  default = "InspireDevGen"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "ssh_ec2_webserver" {
  type    = string
  default = "${var.environment}-ssh-ec2-webserver"
}


