resource "aws_ssm_patch_group" "patchgroup" {
  baseline_id = var.patchbaseline_arn_id
  patch_group = var.patchgroup
}
