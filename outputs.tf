output "window_target" {
  value = aws_ssm_maintenance_window_target.target
}

output "task" {
  value = aws_ssm_maintenance_window_task.task
}

output "maintenance_window" {
  value = aws_ssm_maintenance_window.production
}

output "patchgroup" {
  value = aws_ssm_patch_group.patchgroup
}
