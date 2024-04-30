output "node_pool_name" {
  description = "Node pool name."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].node_pool_name : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].node_pool_name
  sensitive   = false
}

output "node_count" {
  description = "Number of nodes.."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].node_count : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].node_count
  sensitive   = false
}

output "software_code" {
  description = "Software Code."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].software_code : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].software_code
  sensitive   = false
}

output "product_code" {
  description = "Product Code."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].product_code : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].product_code
  sensitive   = false
}

output "k8s_version" {
  description = " Kubenretes version. Only upgrade is supported."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].k8s_version : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].k8s_version
  sensitive   = false
}

output "node_autoscale_enabled" {
  description = "Auto scaling availability"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].autoscale[*].enabled : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].autoscale[*].enabled
  sensitive   = false
}

output "node_autoscale_min" {
  description = "Minimum number of nodes available for auto scaling"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].autoscale[*].min : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].autoscale[*].min
  sensitive   = false
}

output "node_autoscale_max" {
  description = "Maximum number of nodes available for auto scaling"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].autoscale[*].max : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].autoscale[*].max
  sensitive   = false
}

output "node_instance_no" {
  description = "Instance No"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].instance_no : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].instance_no
  sensitive   = false
}

output "node_nodes_name" {
  description = "The name of Server instance"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].name : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].name
  sensitive   = false
}

output "node_nodes_instance_no" {
  description = "The ID of server instance."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].instance_no : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].instance_no
  sensitive   = false
}

output "node_nodes_spec" {
  description = "Server spec"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].spec : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].spec
  sensitive   = false
}

output "node_nodes_private_ip" {
  description = "Private IP"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].private_ip : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].private_ip
  sensitive   = false
}

output "node_nodes_public_ip" {
  description = "Public IP"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].public_ip : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].public_ip
  sensitive   = false
}

output "node_nodes_node_status" {
  description = "node_status"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].node_status : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].node_status
  sensitive   = false
}

output "node_nodes_container_version" {
  description = "Container version of node"
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].container_version : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].container_version
  sensitive   = false
}

output "node_nodes_kernel_version" {
  description = "kernel_version."
  value       = var.autoscale_enabled ? ncloud_nks_node_pool.node_pool_autoscale_enabled[*].nodes[*].kernel_version : ncloud_nks_node_pool.node_pool_autoscale_disabled[*].nodes[*].kernel_version
  sensitive   = false
}

output "release_version" {
  value       = var.release_version
  description = "release version."
}