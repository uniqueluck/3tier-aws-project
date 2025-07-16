output "web_server_public_ip" {
  value = module.ec2.web_public_ip
}

output "app_server_private_ip" {
  value = module.ec2.app_private_ip
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}
