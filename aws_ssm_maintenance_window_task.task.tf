resource "aws_ssm_maintenance_window_task" "task" {
  window_id        = aws_ssm_maintenance_window.production.id
  task_type        = "RUN_COMMAND"
  task_arn         = "AWS-RunShellScript"
  priority         = 1
  service_role_arn = aws_iam_role.patchaccess.arn
  max_concurrency  = "2"
  max_errors       = "1"

  targets {
    key    = "InstanceIds"
    values = [aws_ssm_maintenance_window.production.id]
  }

  task_parameters {
    name   = var.task["name"]
    values = var.task["values"]
  }
}
