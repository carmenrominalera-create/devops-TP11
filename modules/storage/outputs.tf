output "postgres_volume" {
  value = docker_volume.postgres_data.name
}

output "grafana_volume" {
  value = docker_volume.grafana_data.name
}

output "prometheus_volume" {
  value = docker_volume.prometheus_data.name
}
