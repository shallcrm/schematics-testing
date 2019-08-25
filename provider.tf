###################################
#### PROVIDER - Cloud provider ####
###################################

# IBM Cloud provider and credentials  (variables to be set externally using EXPORT commands)
provider "ibm" {
    version = ">= 0.17.1"
    softlayer_username = "${var.sl_username}"   
    softlayer_api_key  = "${var.sl_api_key}"
    ibmcloud_api_key   = "${var.ic_api_key}"                    //  v0.17.1 or higher
    generation         = "${var.vpc_gen}"                       //  Generation 1 = VPC on Classic
    region             = "${var.vpc_region}"                    //  Target region - required for VPC infrastructure
    resource_group     = "${var.vpc_resource_group}"            //  Resource group in which I am authorised to create VPC resources

}
