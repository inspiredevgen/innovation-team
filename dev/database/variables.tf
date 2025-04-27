variable "mysql_version" {
  description = "Version of the DB engine"
  default     = "8.0.40"
}

variable "db_engine" {
  description = "RDS Database Engine"
  default     = "mysql"
}

variable "db_allocated_storage" {
  description = "Total Disk size allocated for the DB instance"
  default     = 10 # GB
}

variable "db_machine_type" {
  description = "Database Machine Type"
  default     = "db.t3.micro"
}


variable "db_admin_username" {
  description = "DB Admin username"
  default     = "inspiredev"
}

variable "db_admin_password" {
  description = "Password of the Admin"
  default     = "Toronto#123!"
}

variable "db_identifier" {
  description = "Database name / identifier"
  default     = "db001"
}
