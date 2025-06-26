variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "location" {
  type    = string
  default = "us-central1-a"
}

variable "cluster_name" {
  type    = string
  default = "my-gke-cluster"
}

variable "initial_node_count" {
  type    = number
  default = 3
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}