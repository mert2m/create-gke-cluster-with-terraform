variable "project_id" {
  description = "The project ID where resources will be created"
  type        = string
}

variable "region" {
  description = "The region to deploy the resources in"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "gke_node_cidr" {
  description = "The CIDR block for GKE nodes"
  type        = string
}

variable "pods_cidr" {
  description = "The CIDR block for GKE pods"
  type        = string
}

variable "svc_cidr" {
  description = "The CIDR block for GKE services"
  type        = string
}

variable "gke_master_cidr" {
  description = "The CIDR block for the GKE master"
  type        = string
}

variable "nat_router_name" {
  description = "The name of the NAT router"
  type        = string
}

variable "nat_name" {
  description = "The name of the NAT configuration"
  type        = string
}

variable "global_ip_name" {
  description = "The name of the global IP address"
  type        = string
}

variable "master_ipv4_cidr_block" {
  description = "The IPv4 CIDR block for the master"
  type        = string
}

variable "bastion_name" {
  description = "The name of the bastion VM"
  type        = string
}

variable "bastion_machine_type" {
  description = "The machine type for the bastion VM"
  type        = string
}

variable "bastion_image" {
  description = "The image for the bastion VM"
  type        = string
}

variable "bastion_startup_script" {
  description = "The startup script for the bastion VM"
  type        = string
}

variable "bastion_tags" {
  description = "The network tags for the bastion VM"
  type        = list(string)
}

variable "firewall_name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "firewall_ports" {
  description = "List of ports for firewall rule"
  type        = list(string)
}

variable "firewall_source_ranges" {
  description = "Source ranges for firewall rule"
  type        = list(string)
}

variable "firewall_target_tags" {
  description = "Target tags for firewall rule"
  type        = list(string)
}

variable "service_account_roles" {
  description = "List of roles to be assigned to the bastion service account"
  type        = list(string)
}
