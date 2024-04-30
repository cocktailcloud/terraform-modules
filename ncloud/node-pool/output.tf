output "node_pool_name" {
  description = "Node pool name."
  value       = ncloud_nks_node_pool.node_pool.node_pool_name
  sensitive   = false
}

output "node_count" {
  description = "Number of nodes.."
  value       = ncloud_nks_node_pool.node_pool.node_count
  sensitive   = false
}

output "software_code" {
  description = "Software Code."
  value       = ncloud_nks_node_pool.node_pool.software_code
  sensitive   = false
}

output "product_code" {
  description = "Product Code."
  value       = ncloud_nks_node_pool.node_pool.product_code
  sensitive   = false
}

output "k8s_version" {
  description = " Kubenretes version. Only upgrade is supported."
  value       = ncloud_nks_node_pool.node_pool.k8s_version
  sensitive   = false
}

output "node_autoscale_enabled" {
  description = "Auto scaling availability"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].enabled
  sensitive   = false
}

output "node_autoscale_min" {
  description = "Minimum number of nodes available for auto scaling"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].min
  sensitive   = false
}

output "node_autoscale_max" {
  description = "Maximum number of nodes available for auto scaling"
  value       = ncloud_nks_node_pool.node_pool.autoscale[*].max
  sensitive   = false
}

output "node_instance_no" {
  description = "Instance No"
  value       = ncloud_nks_node_pool.node_pool.instance_no
  sensitive   = false
}

output "node_nodes_name" {
  description = "The name of Server instance"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].name
  sensitive   = false
}

output "node_nodes_instance_no" {
  description = "The ID of server instance."
  value       = ncloud_nks_node_pool.node_pool.nodes[*].instance_no
  sensitive   = false
}

output "node_nodes_spec" {
  description = "Server spec"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].spec
  sensitive   = false
}

output "node_nodes_private_ip" {
  description = "Private IP"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].private_ip
  sensitive   = false
}

output "node_nodes_public_ip" {
  description = "Public IP"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].public_ip
  sensitive   = false
}

output "node_nodes_node_status" {
  description = "node_status"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].node_status
  sensitive   = false
}

output "node_nodes_container_version" {
  description = "Container version of node"
  value       = ncloud_nks_node_pool.node_pool.nodes[*].container_version
  sensitive   = false
}

output "node_nodes_kernel_version" {
  description = "kernel_version."
  value       = ncloud_nks_node_pool.node_pool.nodes[*].kernel_version
  sensitive   = false
}

output "release_version" {
  value       = var.release_version
  description = "release version."
}