module "patching" {
  source               = "../../"
  patchbaseline_arn_id = var.patchbaseline_arn_id
  patchgroup           = var.patchgroup
  cron                 = var.cron
  task                 = var.task
}
