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
