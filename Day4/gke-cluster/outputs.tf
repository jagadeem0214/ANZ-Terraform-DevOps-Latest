output "cluster_name" {
  value = module.gke.cluster_name
}

output "endpoint" {
  value = module.gke.endpoint
}

output "cluster_ca_certificate" {
  value = module.gke.cluster_ca_certificate
}