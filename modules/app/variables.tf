variable "backend_replicas" {
  type = number
}

variable "postgres_password" {
  type      = string
  sensitive = true
}
