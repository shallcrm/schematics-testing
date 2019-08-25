####################################################################
####  VARIABLES - Define the variables we will use in this plan ####
####################################################################

#### IBM Cloud Access Credentials #####
# Note:  The values of these variables should be set either by exporting environment variables
#        or by setting the variables in a separate .tfvars file
#        These credentials MUST NOT be published on git or any other public repository
variable "sl_username" { 
    description = "IBM Cloud Classic Infrastructure / SoftLayer user name"
    default = "" 
}
variable "sl_api_key" {
    description = "IBM Cloud Classic Infrastructure / SoftLayer API key"
    default = "" 
}
variable "ic_api_key" {
    description = "IBM Cloud Platform / Bluemix API key"
    default = "" 
}

##### IBM Cloud SSH Key Names ######
variable "classic_key_name" {
    description = "Name or reference of SSH key to provision classic VSI instances with"
    default = "Michael Shallcross SSH Key 1"           //  SSH key in IBM CSC East account
#    default = "IBM Cloud SSH Key 2"                    //  SSH key in personal account 
}

variable "vpc_key_1" {
    description = "Name or reference of SSH key to provision VPC on Classic virtual instances with"
    default = "shallcrm-ibmcloud-pwless-ssh-key"       //  SSH key in IBM CSC East account (ensure it exists in the target region)
#    default = "ibmcloud-pwless-ssh-key"                //  SSH key in personal account (ensure it exists in the target region)
}
variable "vpc_key_2" {
    description = "Name or reference of SSH key to provision VPC on Classic virtual instances with"
    default = "shallcrm-ibmcloud-ssh-key"              //  SSH key in IBM CSC East account (ensure it exists in the target region)
#    default = "ibmcloud-ssh-key"                       //  SSH key in personal account (ensure it exists in the target region)
}

#### IBM CLOUD VPC on Classic Variables ###
variable "vpc_region" {
    description = "Target region / API endpoint fpr VPC infrastructure requests"
    default = "au-syd"                               //  VPC being created in Sydney
}

variable "vpc_gen" {
    description = "Target generation for VPC infrastructure API"
    default = "1"                                    //  1 = Classic, 2 = Next Gen
}

variable "vpc_resource_group" {
    description = "Target resource group VPC infrastructure resources"
    default = "7abe241cfa3a421e9ae4d086e8660eb9"     //  IBM CSC East "VPC-Admin" resource group ID - must specify for CSC - not authorised in "default"
#    default = "23585b74d59848369a37b77f524c007a"     //  Personal default resource group ID
}  

variable "vpc_vm_image" {
    description = "Software image ID used for virtual instances"
    default = "cfdaf1a0-5350-4350-fcbc-97173b510843"     //  Ubuntu 18.04 Minimal
}  
