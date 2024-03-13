output "vpc_name" {
  description = "ncloud vpc name"
  value       = ncloud_vpc.vpc.name
  sensitive   = false
}

output "vpc_cidr" {
  description = "ncloud vpc ipv4_cidr_block"
  value       = ncloud_vpc.vpc.ipv4_cidr_block
  sensitive   = false
}

## ncloud_nks_cluster_
output "ncloud_nks_cluster_name" {
  description = "Cluster name"
  value       = ncloud_nks_cluster.cluster.name
  sensitive   = false
}

output "ncloud_nks_cluster_id" {
  description = "Cluster uuid"
  value       = ncloud_nks_cluster.cluster.id
  sensitive   = false
}

output "ncloud_nks_cluster_endpoint" {
  description = "Control Plane API address"
  value       = ncloud_nks_cluster.cluster.endpoint
  sensitive   = false
}

output "ncloud_nks_cluster_private_node_subnet_name" {
  description = "private_node_subnet.. name"
  value       = ncloud_subnet.node_subnet.name
  sensitive   = false
}

output "ncloud_nks_cluster_private_node_subnet_zone" {
  description = "private_node_subnet.. zone"
  value       = ncloud_subnet.node_subnet.zone
  sensitive   = false
}
output "ncloud_nks_cluster_private_node_subnet_subnet" {
  description = "private_node_subnet.. subnet"
  value       = ncloud_subnet.node_subnet.subnet
  sensitive   = false
}
output "ncloud_nks_cluster_private_node_subnet_subnet_type" {
  description = "private_node_subnet.. subnet_type"
  value       = ncloud_subnet.node_subnet.subnet_type
  sensitive   = false
}
output "ncloud_nks_cluster_private_node_subnet_usage_type" {
  description = "private_node_subnet.. usage_type"
  value       = ncloud_subnet.node_subnet.usage_type
  sensitive   = false
}

output "ncloud_nks_cluster_lb_private_subnet_name" {
  description = "LB subnet Private Name"
  value       = ncloud_subnet.private_lb_subnet.name
  sensitive   = false
}

output "ncloud_nks_cluster_lb_private_subnet_zone" {
  description = "LB subnet Private Zone"
  value       = ncloud_subnet.private_lb_subnet.zone
  sensitive   = false
}

output "ncloud_nks_cluster_lb_private_subnet_subnet" {
  description = "LB subnet Private subnet"
  value       = ncloud_subnet.private_lb_subnet.subnet
  sensitive   = false
}

output "ncloud_nks_cluster_lb_public_subnet_name" {
  description = "LB subnet Public subnet name"
  value       = ncloud_subnet.public_lb_subnet.name
  sensitive   = false
}

output "ncloud_nks_cluster_lb_public_subnet_zone" {
  description = "LB subnet Public subnet zone"
  value       = ncloud_subnet.public_lb_subnet.zone
  sensitive   = false
}

output "ncloud_nks_cluster_lb_public_subnet_subnet" {
  description = "LB subnet Public subnet subnet "
  value       = ncloud_subnet.public_lb_subnet.subnet
  sensitive   = false
}

# XEN / RHV
# 10 ea : SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002
# 50 ea : SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002
output "ncloud_nks_cluster_cluster_type" {
  description = "Cluster type. Maximum number of nodes XEN / RHV"
  value       = ncloud_nks_cluster.cluster.cluster_type
  sensitive   = false
}

output "ncloud_nks_cluster_login_key_name" {
  description = "Login key name"
  value       = ncloud_nks_cluster.cluster.login_key_name
  sensitive   = false
}

output "ncloud_nks_cluster_zone" {
  description = "zone Code"
  value       = ncloud_nks_cluster.cluster.zone
  sensitive   = false
}

output "ncloud_nks_cluster_log" {
  description = "Audit log availability"
  value       = ncloud_nks_cluster.cluster.log
  sensitive   = false
}

output "ncloud_nks_cluster_k8s_version" {
  description = "Kubenretes version."
  value       = ncloud_nks_cluster.cluster.k8s_version
  sensitive   = false
}

output "ncloud_nks_cluster_acg_no" {
  description = "Kubenretes version."
  value       = ncloud_nks_cluster.cluster.acg_no
  sensitive   = false
}


output "ncloud_nks_kube_config_id" {
  description = "Host on kubeconfig."
  value       = data.ncloud_nks_kube_config.kube_config.id
  sensitive   = false
}

output "ncloud_nks_kube_config_host" {
  description = "Host on kubeconfig."
  value       = data.ncloud_nks_kube_config.kube_config.host
  sensitive   = false
}

output "ncloud_nks_kube_config_cluster_ca_certificate" {
  description = "Cluster CA certificate on kubeconfig."
  value       = data.ncloud_nks_kube_config.kube_config.cluster_ca_certificate
  sensitive   = false
}

output "release_version" {
  value       = var.release_version
  description = "release version."
}
