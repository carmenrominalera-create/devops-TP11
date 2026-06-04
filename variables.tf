variable "environment" {
  type    = string
  default = "dev"
}

variable "backend_replicas" {
  type    = number
  default = 2
}

variable "postgres_password" {
  type      = string
  sensitive = true
}

variable "network_name" {
  type    = string
  default = "app-network"
}
