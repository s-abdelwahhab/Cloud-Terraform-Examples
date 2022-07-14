# --- production deployment outputs ---

output "prodcution_dep_id" {
  value       = ec_deployment.prod_example_minimal.id
  description = "production deployment ID"
}

output "prod_elasticsearch_https_endpoint" {
  value       = ec_deployment.prod_example_minimal.elasticsearch[0].https_endpoint
  description = "production ES endpoint"
}

output "prod_kibana_https_endpoint" {
  value       = ec_deployment.prod_example_minimal.kibana[0].https_endpoint
  description = "production KB endpoint"
}

output "prod_elasticsearch_cloud_id" {
  value       = ec_deployment.prod_example_minimal.elasticsearch[0].cloud_id
  description = "production deployment Cloud ID"
}

output "prod_es_password" {
  value = ec_deployment.prod_example_minimal.elasticsearch_password
  sensitive = true
}

# --- monitoring deployment outputs ---

output "monitoring_dep_id" {
  value       = ec_deployment.monitor_example_minimal.id
  description = "monitoring deployment ID"
}

output "monitor_elasticsearch_https_endpoint" {
  value       = ec_deployment.monitor_example_minimal.elasticsearch[0].https_endpoint
  description = "monitoring ES endpoint"
}

output "monitor_kibana_https_endpoint" {
  value       = ec_deployment.monitor_example_minimal.kibana[0].https_endpoint
  description = "monitoring KB endpoint"
}

output "monitor_elasticsearch_cloud_id" {
  value       = ec_deployment.monitor_example_minimal.elasticsearch[0].cloud_id
  description = "monitoring deployment Cloud ID"
}

output "monitor_es_password" {
  value = ec_deployment.monitor_example_minimal.elasticsearch_password
  sensitive = true
}