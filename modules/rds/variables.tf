variable "address" {
  description = "The address of the RDS instance"
  type        = string
  default     = "video-collector-db-instance.c9sasqeu213c.us-east-1.rds.amazonaws.com"
}

variable "allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
  default     = 20
}

variable "auto_minor_version_upgrade" {
  description = "Whether minor version upgrades are automatically applied to the RDS instance"
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "The availability zone of the RDS instance"
  type        = string
  default     = "us-east-1d"
}

variable "backup_retention_period" {
  description = "The number of days to retain automated backups"
  type        = number
  default     = 0
}

variable "backup_target" {
  description = "The target for RDS backups"
  type        = string
  default     = "region"
}

variable "backup_window" {
  description = "The window during which automated backups are created"
  type        = string
  default     = "06:28-06:58"
}

variable "ca_cert_identifier" {
  description = "The identifier of the CA certificate for the RDS instance"
  type        = string
  default     = "rds-ca-2019"
}

variable "copy_tags_to_snapshot" {
  description = "Whether to copy tags to RDS snapshots"
  type        = bool
  default     = true
}

variable "customer_owned_ip_enabled" {
  description = "Whether customer-owned IP is enabled for the RDS instance"
  type        = bool
  default     = false
}

variable "db_name" {
  description = "The name of the database in the RDS instance"
  type        = string
  default     = "videocollectordb"
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group for the RDS instance"
  type        = string
  default     = "default-vpc-0d1d82125a6f8ac08"
}

variable "delete_automated_backups" {
  description = "Whether automated backups are deleted when the RDS instance is deleted"
  type        = bool
  default     = true
}

variable "deletion_protection" {
  description = "Whether deletion protection is enabled for the RDS instance"
  type        = bool
  default     = false
}

variable "engine" {
  description = "The database engine used by the RDS instance"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "The version of the database engine used by the RDS instance"
  type        = string
  default     = "15.5"
}

variable "hosted_zone_id" {
  description = "The hosted zone ID for the RDS instance"
  type        = string
  default     = "Z2R2ITUGPM61AM"
}

variable "iam_database_authentication_enabled" {
  description = "Whether IAM database authentication is enabled for the RDS instance"
  type        = bool
  default     = false
}

variable "instance_class" {
  description = "The instance class of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "kms_key_id" {
  description = "The ID of the KMS key used to encrypt data in the RDS instance"
  type        = string
  default     = "arn:aws:kms:us-east-1:568211572260:key/7a2b7f99-6c57-4d12-929c-26f442d9aef3"
}

variable "license_model" {
  description = "The license model for the RDS instance"
  type        = string
  default     = "postgresql-license"
}

variable "maintenance_window" {
  description = "The maintenance window for the RDS instance"
  type        = string
  default     = "sat:08:18-sat:08:48"
}

variable "performance_insights_enabled" {
  description = "Whether performance insights are enabled for the RDS instance"
  type        = bool
  default     = true
}

variable "performance_insights_kms_key_id" {
  description = "The KMS key ID for performance insights encryption"
  type        = string
  default     = "arn:aws:kms:us-east-1:568211572260:key/7a2b7f99-6c57-4d12-929c-26f442d9aef3"
}

variable "performance_insights_retention_period" {
  description = "The retention period for performance insights data"
  type        = number
  default     = 7
}

variable "port" {
  description = "The port on which the RDS instance accepts connections"
  type        = number
  default     = 5432
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = true
}

variable "skip_final_snapshot" {
  description = "Whether to skip the final snapshot when the RDS instance is deleted"
  type        = bool
  default     = true
}

variable "storage_encrypted" {
  description = "Whether storage encryption is enabled for the RDS instance"
  type        = bool
  default     = true
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
  default     = "gp2"
}

variable "username" {
  description = "The master username for the RDS instance"
  type        = string
  default     = "vcollector"
}

variable "vpc_security_group_ids" {
  description = "The IDs of the security groups associated with the RDS instance"
  type        = list(string)
  default     = ["sg-0d51c0bc7ed14b958"]
}
