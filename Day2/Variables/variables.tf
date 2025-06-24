variable "credentials_file" {
  description = "Path to the GCP credentials file"
  type        = string
  default     = "C:/Users/mural/Documents/gcp-terraform-key.json"
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "careful-relic-456115"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-south1-a"
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
  default     = "webserver"
}

variable "machine_type" {
  description = "Machine type for the compute instance"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "OS image to use"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-minimal-2204-lts"
}

variable "disk_size" {
  description = "Size of the boot disk in GB"
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "Type of the boot disk"
  type        = string
  default     = "pd-balanced"
}
