# google provider
provider "google" {
    credentials = file(var.gcp_credentials)
    project = var.gcp_project_id
    region  = var.gcp_region
    zone    = var.gcp_zones
}

data "google_client_config" "current" {
}

output "project" {
  value = data.google_client_config.current.project
}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.current.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}
