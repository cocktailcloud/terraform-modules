# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable vpc_cidr {
  description = "The CIDR block of the VPC. The range must be between /16 and/28 within the private band (10.0.0/8,172.16.0.0/12,192.168.0.0/16)."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "cluster_name" {
  description = "Cluster name."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
#   * XEN / RHV
#   * 10 ea : SVR.VNKS.STAND.C002.M008.NET.SSD.B050.G002
#   * 50 ea : SVR.VNKS.STAND.C004.M016.NET.SSD.B050.G002
# ---------------------------------------------------------------------------------------------------------------------
variable "cluster_type" {
  description = "Cluster type. Maximum number of nodes."
  type        = string
}


# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "cluster_zone" {
  description = "zone Code."
  type        = string
}

variable audit_enabled {
  description = "Audit log availability"
  default     = false
  type        = bool
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "k8s_version" {
  description = "Kubenretes version. Only upgrade is supported."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable release_version {
  description = "release_version info."
  type        = string
}