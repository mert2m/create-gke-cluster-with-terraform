project_id             = "ace-apigeehybrid-poc"
region                 = "europe-west4"  
cluster_name           = "gke-mert-clust"
vpc_name               = "mert-vpc"
subnet_name            = "subnet-mert"
gke_node_cidr          = "10.0.0.0/24"
pods_cidr              = "10.254.0.0/16"
svc_cidr               = "10.255.128.0/18"
gke_master_cidr        = "10.255.255.224/28"
nat_router_name        = "router-mert"
nat_name               = "router-config"
global_ip_name         = "my-global-ip-mert"
master_ipv4_cidr_block = "10.255.255.224/28"
/* gke cluster private public endpoint olmayacak
nat global ip ver 
 */

bastion_name           = "mert-bastion-vm"
bastion_machine_type   = "e2-medium"
bastion_image          = "ubuntu-2004-lts"
bastion_startup_script = <<-EOT
  #!/bin/bash
  sudo apt-get update
  sudo apt-get install -yq git
EOT
bastion_tags           = ["bastion"]

firewall_name           = "allow-ssh-bastion"
firewall_ports          = ["22"]
firewall_source_ranges  = ["0.0.0.0/0"]
firewall_target_tags    = ["bastion"]


service_account_roles  = [
  "roles/logging.logWriter",
  "roles/monitoring.metricWriter",
  "roles/monitoring.viewer",
  "roles/compute.osLogin",
  "roles/compute.admin",
  "roles/iam.serviceAccountUser",
  "roles/container.clusterViewer",
  "roles/container.admin",            
  "roles/container.clusterAdmin",      
  "roles/container.developer",  
  "roles/compute.osAdminLogin"
]
