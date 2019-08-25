##############################################################
#### VPC Subnet resource descriptions                     ####
##############################################################

# Create a subnet in au-syd-1
resource "ibm_is_subnet" "mas_subnet_1" {
    name                  = "shallcrm-au-syd-1-subnet-1"      //  Subnet name
    vpc                   = "${ibm_is_vpc.mas_vpc.id}"        //  VPC in which to create subnet 
    zone                  = "au-syd-1"                        //  Zone for this subnet
    ipv4_cidr_block       = "10.40.1.0/24"                    //  CIDR block (within overall VPC IP address space)
}

# Create a subnet in au-syd-2
resource "ibm_is_subnet" "mas_subnet_2" {                    
    name                  = "shallcrm-au-syd-2-subnet-1"      //  Subnet name
    vpc                   = "${ibm_is_vpc.mas_vpc.id}"        //  VPC in which to create subnet 
    zone                  = "au-syd-2"                        //  Zone for this subnet
    ipv4_cidr_block       = "10.50.1.0/24"                    //  CIDR block (within overall VPC IP address space)
}
