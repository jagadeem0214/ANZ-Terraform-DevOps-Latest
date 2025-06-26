provider "google" {
  credentials = file("C:/Users/mural/Documents/gcp-terraform-key.json") # Update path as needed
  project = var.project_id
  region  = var.region
  zone        = "asia-south1-a"
}
module "gke" {
  source            = "./modules/gke"
  project_id        = var.project_id
  region            = var.region
  cluster_name      = var.cluster_name
  location          = var.location
  initial_node_count = var.initial_node_count
  machine_type      = var.machine_type
}