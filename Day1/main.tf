provider "google" {
  credentials = file("C:/Users/mural/Documents/gcp-terraform-key.json")
  project     = "careful-relic-456115-n9"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}

resource "google_compute_instance" "webserver" {
  name         = "webserver-example"
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

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y apache2
    systemctl start apache2
    systemctl enable apache2
  EOT

  tags = ["web"]
}
