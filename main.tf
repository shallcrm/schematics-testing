#####################################################
#### DATA SOURCES - Data from existing resources ####
#####################################################

# Retrieve details of existing SSH keys that will be used to provision and access VPC VMs
data "ibm_is_ssh_key" "vpc_mas_key_1" {
    name = "${var.vpc_key_1}"
}

data "ibm_is_ssh_key" "vpc_mas_key_2" {
    name = "${var.vpc_key_2}"
}

# Retrieve details of existing SSH keys that will be used to provision and access Classic VMs
data "ibm_compute_ssh_key" "classic_mas_key_1" {
    label = "${var.classic_key_name}"
}

# Retrieve details of image that will be used to and provision VPC VMs 
data "ibm_is_image" "vpc_vm_image" {
    name = "ubuntu-18.04-amd64"                                        //  Ubuntu Linux (18.04 LTS Bionic Beaver Minimal Install)
}


##############################################################
#### VPC - Declarations of new VPC                        ####
##############################################################

# Create a new VPC
resource "ibm_is_vpc" "mas_vpc" {
    name                  = "shallcrm-sydney-vpc"                      //  Name for my VPC
    classic_access        = false                                      //  Do not connect to IBM Cloud classic infrastraucture
    resource_group        = "${var.vpc_resource_group}"                //  Resource group in which I am authorised to create VPC resources
}

