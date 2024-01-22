resource "aws_docdb_subnet_group" "docdb_subnet_group" {
  name        = "${var.cluster_name}-subnet-group"
  subnet_ids  = var.subnet_ids
}

resource "aws_docdb_cluster_parameter_group" "docdb_parameter_group" {
  name        = var.parameter_group_name
  family      = var.family_version
  description = var.parameter_description
}

resource "aws_docdb_cluster" "docdb" {
  cluster_identifier              = var.cluster_name
  engine                          = "docdb"
  engine_version                  = var.docdb_version
  master_username                 = var.username
  master_password                 = var.password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.backup_window
  skip_final_snapshot             = var.skip_final_snapshot
  db_subnet_group_name            = aws_docdb_subnet_group.docdb_subnet_group.id
  vpc_security_group_ids          = var.vpc_security_group_ids
  port                            = var.cluster_port
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.docdb_parameter_group.id
  storage_encrypted               = var.storage_encrypted
  preferred_maintenance_window    = var.maintenance_window
  deletion_protection             = var.deletion_protection
}


resource "aws_docdb_cluster_instance" "cluster_instances" {
  count              = var.no_of_instances
  identifier         = "${var.instance_name}-${count.index}"
  cluster_identifier = aws_docdb_cluster.docdb.id
  instance_class     = var.instance_class
}