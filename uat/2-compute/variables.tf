variable "env" {
  default = "UAT"
}

variable "project" {
  default = "InspireDev"
}

variable "owner" {
  default = "Cloud Team"
}

variable "ssh_key_name" {
  default = "ec2-ssh-key"
}

variable "ami_ubuntu" {
  default = ""
}

variable "ami_amazon_linux" {
  default = ""
}

variable "web_tier_machine_type" {
  default = ""
}

variable "app_tier_machine_type" {
  default = ""
}

variable "web_tier_count" {
  default = 1
}

variable "app_tier_count" {
  default = 1
}

variable "az_names" {
  type        = list(string)
  description = "Availability Zones Names"
  default     = ["ca-central-1a", "ca-central-1b", "ca-central-1d"]
}

variable "az_ids" {
  type        = list(string)
  description = "Availability Zones Ids"
  default     = ["cac1-az1", "cac1-az2", "cac1-az4"]
}
