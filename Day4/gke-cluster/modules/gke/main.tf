resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.location

  initial_node_count = var.initial_node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  remove_default_node_pool = false
  network                  = "default"
  subnetwork               = "default"
}