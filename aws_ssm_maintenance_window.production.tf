resource "aws_ssm_maintenance_window" "production" {
  name     = var.patchgroup
  schedule = var.cron
  duration = 3
  cutoff   = 1
  enabled  = true
}
