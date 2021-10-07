variable "module_sample_var" {
  description = "Modules sample var"
  type = string
}

variable "module_sleepy_time" {
  description = "How long our local-exec will take a nap in child module"
  default     = 0
}