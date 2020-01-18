variable "patchgroup" {
  type        = string
  description = "A named group of servers to apply tasks to"
}

variable "patchbaseline_arn_id" {
  type        = string
  description = "This is an AWS variable that describe the patch baseline"
}

variable "cron" {
  type        = string
  description = "The Cron statement to control the patch schedule"
}

variable "task" {
  description = "Contains the task details and command"
  default = {
    name   = "commands"
    values = ["yum update -y; reboot"]
  }
}
