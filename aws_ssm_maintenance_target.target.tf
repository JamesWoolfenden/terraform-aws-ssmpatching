resource "aws_ssm_maintenance_window_target" "target" {
  window_id     = aws_ssm_maintenance_window.production.id
  resource_type = "INSTANCE"

  targets {
    key    = "tag:PatchGroup"
    values = [var.patchgroup]
  }
}
