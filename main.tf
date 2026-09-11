resource "aws_rds_cluster" "aurora" {
  cluster_identifier = "prod-aurora-pg"
  engine             = "aurora-postgresql"
  engine_mode        = "provisioned"
  engine_version     = "15.4"
  database_name      = "appdb"
  master_username    = "dbadmin"
  manage_master_user_password = true

  serverlessv2_scaling_configuration {
    min_capacity = 0.5
    max_capacity = 16.0
  }
}
