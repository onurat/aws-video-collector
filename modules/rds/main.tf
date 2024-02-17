provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds-video-collector" {
  identifier                  = "video-collector-db-instance"
  allocated_storage           = var.allocated_storage
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  availability_zone           = var.availability_zone
  backup_retention_period     = var.backup_retention_period
  backup_window               = var.backup_window
  ca_cert_identifier          = var.ca_cert_identifier
  copy_tags_to_snapshot       = var.copy_tags_to_snapshot
  db_subnet_group_name        = var.db_subnet_group_name
  delete_automated_backups    = var.delete_automated_backups
  deletion_protection         = var.deletion_protection
  engine                      = var.engine
  engine_version              = var.engine_version
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  instance_class              = var.instance_class
  kms_key_id                  = var.kms_key_id
  license_model               = var.license_model
  maintenance_window          = var.maintenance_window
  performance_insights_enabled = var.performance_insights_enabled
  performance_insights_kms_key_id = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period
  port                        = var.port
  publicly_accessible         = var.publicly_accessible
  skip_final_snapshot         = var.skip_final_snapshot
  storage_encrypted           = var.storage_encrypted
  storage_type                = var.storage_type
  username                    = var.username
  vpc_security_group_ids      = var.vpc_security_group_ids

}
