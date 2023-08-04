variable "gcp_credentials" {
    type = string
    description = "Service Account para GCP"
}

variable "gcp_project_id" {
    type = string
    description = "Project Id"
}

variable "gcp_region" {
    type = string
    description = "Region donde deployar"
}

variable "gcp_zones" {
    type = string
    description = "Zona donde deployar"
}

variable "gke_cluster_name" {
    type = string
    description = "GKE Cluster name"
}

variable "gke_regional" {
    type = bool
    description = "GKE Cluster name"
}

variable "gke_network" {
    type = string
    description = "GKE network name create for this eqfx test"
}

variable "gke_subnetwork" {
    type = string
    description = "GKE subnetwork name create for this eqfx test"
}

variable "gke_default_nodepool_name" {
    type = string
    description = "GKE nodepool name create for this eqfx test"
}

variable "gke_service_account_name" {
    type = string
    description = "GKE service account for this eqfx test"
}