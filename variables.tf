variable "patchgroup" {
  description = ""
}

variable "patchbaseline_arn_id" {
  description = ""
}

variable "cron" {
  description = ""
}

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
