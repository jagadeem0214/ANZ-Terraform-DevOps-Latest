provider "google" {
  credentials = file("C:/Users/mural/Documents/gcp-terraform-key.json")
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "vm_instance" {
  source         = "./modules/compute_instance"
  instance_name  = var.instance_name
  machine_type   = var.machine_type
  zone           = var.zone
  project_id     = var.project_id
  image_family   = var.image_family
  image_project  = var.image_project
}
