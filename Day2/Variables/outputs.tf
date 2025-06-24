output "instance_name" {
  description = "Name of the created instance"
  value       = google_compute_instance.webserver.name
}

output "instance_zone" {
  description = "Zone where the instance is deployed"
  value       = google_compute_instance.webserver.zone
}

output "public_ip" {
  description = "Public IP address of the instance"
  value       = google_compute_instance.webserver.network_interface[0].access_config[0].nat_ip
}

/*output "Private_ip" {
  description = "Private Ip"
  value = google_compute_instance.webserver.network_interface[1].access_config[1].nat_ip
}*/