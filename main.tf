resource "google_compute_instance" "webserver-murali" {
  name         = "webserver-example1"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-2204-lts"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("E:/Trainings/ANZ-Terraform-DevOps-Latest/startup.sh")

  tags = ["web"]
}
resource "google_compute_instance" "webserver" {
  name         = "webserver-example1"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-2204-lts"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

  metadata_startup_script = file("E:/Trainings/ANZ-Terraform-DevOps-Latest/startup.sh")

  tags = ["web"]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags   = ["web"]
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]

  description = "Allow incoming HTTP traffic on port 80"
}
