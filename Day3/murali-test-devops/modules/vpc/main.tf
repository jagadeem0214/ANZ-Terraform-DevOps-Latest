resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  mtu                     = var.mtu
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.vpc.id
  private_ip_google_access = true
}

# Allow All Ingress (adjust in production)
resource "google_compute_firewall" "allow_all" {
  name    = "${var.vpc_name}-allow-all"
  network = google_compute_network.vpc.name

  allow {
    protocol = "all"
  }

  direction = "INGRESS"
  source_ranges = ["0.0.0.0/0"]
}
