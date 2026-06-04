resource "docker_volume" "postgres_data" {
  name = "postgres-data"
}

resource "docker_volume" "grafana_data" {
  name = "grafana-data"
}

resource "docker_volume" "prometheus_data" {
  name = "prometheus-data"
}
