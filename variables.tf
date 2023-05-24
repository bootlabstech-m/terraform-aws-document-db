variable "region" {
  type = string
  description = "AWS Region"
}

variable "subnet_group_name" {
  type = string
  description = "The name of the docDB subnet group"
}

variable "description" {
  type = string
  description = "The description of the docDB subnet group. Defaults to Managed by Terraform ."
}

variable "subnet_ids" {
    type = list(string)
    description = "A list of VPC subnet IDs."
}

variable "parameter_group_name" {
  type = string
  description = "The name of the DocumentDB cluster parameter group"
}

variable "family_version" {
  type = string
  description = "The family of the DocumentDB cluster parameter group."
}

variable "parameter_description" {
  type = string
  description = "The description of the DocumentDB cluster parameter group"
}

variable "cluster_name" {
  type = string
  description = "The cluster Name"
}

variable "docdb_version" {
  type = string
  description = "The database engine version"
}

variable "username" {
  type = string
  description = "Username for the master DB user."
}

variable "password" {
  type = string
  description = "Password for the master DB user."
}

variable "backup_retention_period" {
  type = string
  description = "The days to retain backups for. Default 1"
  default = "1"
}

variable "backup_window" {
  type = string
  description = "The daily time range during which automated backups are created in UTC eg. 00:00-00:30 "
}

variable "skip_final_snapshot" {
  type = string
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted,"
  default = "true"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "List of VPC security groups to associate with the Cluster"
}

variable "cluster_port" {
  type = string
  description = "The port on which the DB accepts connections"
  default = "27017"
}

variable "storage_encrypted" {
  type = string
  description = "Specifies whether the DB cluster is encrypted."
  default = "true"
}

variable "maintenance_window" {
  type = string
  description = "The weekly time range during which system maintenance can occur, in (UTC) eg. wed:04:00-wed:04:30"
}

variable "deletion_protection" {
  type = string
  description = "A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. "
  default = "true"
}

variable "no_of_instances" {
  type = string
  description = "No. of cluster instances"
}

variable "instance_name" {
  type = string
  description = "The identifier/name for the DocumentDB instance"
}

variable "instance_class" {
  type = string
  description = "The instance class to use."
}

variable "role_arn" {
  type = string
  description = "Role ARN"
}
