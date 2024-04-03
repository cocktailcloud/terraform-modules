resource "ncloud_vpc" "vpc" {
  name            = "${var.cluster_name}-vpc"
  ipv4_cidr_block = var.vpc_cidr
}

resource "ncloud_subnet" "node_subnet" {
  name           = "${var.cluster_name}-nodes"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = cidrsubnet(ncloud_vpc.vpc.ipv4_cidr_block, 2, 1)
  zone           = var.cluster_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no    #(Required) Network ACL의 ID
  subnet_type    = "PRIVATE"
  usage_type     = "GEN"
}

resource "ncloud_route_table" "route_table" {
  name           = "${var.cluster_name}-rt"
  vpc_no                = ncloud_vpc.vpc.id
  supported_subnet_type = "PRIVATE"
}


resource "ncloud_route_table_association" "route_table_subnet" {
  route_table_no = ncloud_route_table.route_table.id
  subnet_no      = ncloud_subnet.node_subnet.id
}

resource "ncloud_subnet" "private_lb_subnet" {
  name           = "${var.cluster_name}-prls"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = cidrsubnet(ncloud_vpc.vpc.ipv4_cidr_block, 2, 0)
  zone           = var.cluster_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type     = "LOADB"
}

resource "ncloud_subnet" "public_lb_subnet" {
  name           = "${var.cluster_name}-pbls"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = cidrsubnet(ncloud_vpc.vpc.ipv4_cidr_block, 2, 2)
  zone           = var.cluster_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type     = "LOADB"
}


resource "ncloud_subnet" "nat_subnet" {
  name           = "${var.cluster_name}-nats"
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = cidrsubnet(ncloud_vpc.vpc.ipv4_cidr_block, 2, 3)
  zone           = var.cluster_zone
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  #(Required) Network ACL의 ID
  subnet_type    = "PUBLIC" // PUBLIC(Public) | PRIVATE(Private)
  usage_type     = "NATGW"
}

resource "ncloud_nat_gateway" "nat_gateway" {
  name      = "${var.cluster_name}-natgw"
  vpc_no    = ncloud_vpc.vpc.id
  subnet_no = ncloud_subnet.nat_subnet.id
  zone      = var.cluster_zone
}

resource "ncloud_route" "kubernetes_route" {
  route_table_no         = ncloud_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  target_type            = "NATGW"
  target_name            = ncloud_nat_gateway.nat_gateway.name
  target_no              = ncloud_nat_gateway.nat_gateway.id
}


resource "ncloud_login_key" "loginkey" {
  key_name = var.cluster_name
  depends_on = [ncloud_route.kubernetes_route]
}

resource "ncloud_nks_cluster" "cluster" {
  name                 = var.cluster_name
  hypervisor_code      = var.hypervisor_code
  cluster_type         = var.cluster_type
  login_key_name       = ncloud_login_key.loginkey.key_name
  lb_private_subnet_no = ncloud_subnet.private_lb_subnet.id
  lb_public_subnet_no  = ncloud_subnet.public_lb_subnet.id
  subnet_no_list       = [ncloud_subnet.node_subnet.id]
  vpc_no               = ncloud_vpc.vpc.id
  zone                 = var.cluster_zone
  k8s_version          = var.k8s_version
  log {
    audit = var.audit_enabled
  }
  depends_on = [ncloud_login_key.loginkey]
}

data "ncloud_nks_kube_config" "kube_config" {
  cluster_uuid = ncloud_nks_cluster.cluster.uuid
}


data "ncloud_network_acls" "nacl" {
  vpc_no    = ncloud_vpc.vpc.id
}