resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "postgres" {
  name = "postgres:15"
}

resource "docker_container" "frontend" {
  name  = "frontend"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

resource "docker_container" "backend" {
  count = var.backend_replicas

  name  = "backend-${count.index}"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 9000 + count.index
  }
}

resource "docker_container" "postgres" {
  name  = "postgres"
  image = docker_image.postgres.image_id

  env = [
    "POSTGRES_PASSWORD=${var.postgres_password}"
  ]

  ports {
    internal = 5432
    external = 5432
  }
}
