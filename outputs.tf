output "environment" {
  value = var.environment
}

output "backend_replicas" {
  value = var.backend_replicas
}

output "network_name" {
  value = module.network.network_name
}
