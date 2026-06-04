module "network" {
  source = "./modules/network"

  network_name = var.network_name
}

module "storage" {
  source = "./modules/storage"
}

module "app" {
  source = "./modules/app"

  backend_replicas = var.backend_replicas
  postgres_password = var.postgres_password
}
