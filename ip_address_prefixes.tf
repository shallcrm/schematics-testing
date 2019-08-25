##############################################################
#### VPC - IP Address Prefis declarations                 ####
##############################################################

# Assign an IP address range prefix to zone 1
resource "ibm_is_vpc_address_prefix" "mas_vpc_address_prefix_1" {
    name                  = "shallcrm-au-syd-1-address-prefix"         //  Name for the address range prefix
    zone                  = "au-syd-1"                                 //  Zone to which this address preifx applies
    vpc                   = "${ibm_is_vpc.mas_vpc.id}"                 //  VPC for which we are defining the address prefix
    cidr                  = "10.40.0.0/16"                             //  IP address range prefix for this zone in this VPC
}

# Assign an IP address range prefix to zone 2
resource "ibm_is_vpc_address_prefix" "mas_vpc_address_prefix_2" {
    name                  = "shallcrm-au-syd-2-address-prefix"         //  Name for the address range prefix
    zone                  = "au-syd-2"                                 //  Zone to which this address preifx applies
    vpc                   = "${ibm_is_vpc.mas_vpc.id}"                 //  VPC for which we are defining the address prefix
    cidr                  = "10.50.0.0/16"                             //  IP address range prefix for this zone in this VPC
}

# Assign an IP address range prefix to zone 3
resource "ibm_is_vpc_address_prefix" "mas_vpc_address_prefix_3" {
    name                  = "shallcrm-au-syd-3-address-prefix"         //  Name for the address range prefix
    zone                  = "au-syd-3"                                 //  Zone to which this address preifx applies
    vpc                   = "${ibm_is_vpc.mas_vpc.id}"                 //  VPC for which we are defining the address prefix
    cidr                  = "10.60.0.0/16"                             //  IP address range prefix for this zone in this VPC
}
