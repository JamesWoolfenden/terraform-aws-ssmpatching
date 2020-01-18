variable "patchgroup" {
  type        = string
  description = ""
}

variable "patchbaseline_arn_id" {
  type        = string
  description = ""
}

variable "cron" {
  type        = string
  description = ""
}


variable "task" {
  description = "Contains the task details and command"
  default = {
    name   = "commands"
    values = ["yum update -y; reboot"]
  }
}
