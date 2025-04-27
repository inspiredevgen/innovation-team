variable "env" {
  default = "UAT"
}

variable "project" {
  default = "InspireDev"
}

variable "owner" {
  default = "Cloud Team"
}

variable "vpc_cidr_block" {
  default = "10.120.0.0/16"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR blocks"
  default     = ["10.120.10.0/24", "10.120.11.0/24", "10.120.12.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR blocks"
  default     = ["10.120.110.0/24", "10.120.111.0/24", "10.120.112.0/24"]
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
