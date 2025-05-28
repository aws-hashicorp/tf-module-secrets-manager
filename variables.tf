variable "secretos" {
  description = "List of secrets"
  type        = any
  default     = []
}

variable "tags" {
  description = "Map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
