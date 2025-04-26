variable "env" {
  default = "dev"
}
variable "website_instance_type" {
  default = "t2.micro"
}

variable "ec2_count" {
  default = 1
}
variable "ami_amazon_linux-2" {
  default = "ami-08aa102ddc7558752"
}

variable "ami_amazon_linux" {
  default = "ami-02018c46119b25ffe"
}

variable "ami_ubuntu" {
  # Ubuntu Server 24.04 LTS
  default = "ami-08355844f8bc94f55"
}
