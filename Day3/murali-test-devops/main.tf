provider "google" {
  credentials = file("C:/Users/mural/Documents/gcp-terraform-key.json")
  project     = "careful-relic-456115-n9"
  region      = "asia-south1"
  zone        = "asia-south1-a"
}

module "clahan_vpc" {
  source       = "./modules/vpc"
  vpc_name     = var.vpc_name
  mtu          = var.mtu
  region       = var.region
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  subnet_zone  = var.subnet_zone
}
