##############################################################
#### VPC Network Security Group Rules descriptions        ####
##############################################################

# Allow ingress traffic for ssh traffic on TCP port 22
resource "ibm_is_security_group_rule" "mas_security_group_rule_ssh" {
    group = "${ibm_is_vpc.mas_vpc.default_security_group}"    //  Network Security Group ID 
    direction = "ingress"                                     //  Direction of traffic 
    remote = "0.0.0.0/0"                                      //  Allowable remote source IP addresses
    tcp = {                                                   //  Protocal - TCP
        port_min = 22                                         //  Port range
        port_max = 22                                         //  Port range
    }
 }

# Allow ingress traffic for http traffic on TCP port 80
resource "ibm_is_security_group_rule" "mas_security_group_rule_http" {
    group = "${ibm_is_vpc.mas_vpc.default_security_group}"    //  Network Security Group ID 
    direction = "ingress"                                     //  Direction of traffic 
    remote = "0.0.0.0/0"                                      //  Allowb\able remote source IP addresses
    tcp = {                                                   //  Protocal - TCP
        port_min = 80                                         //  Port range
        port_max = 80                                         //  Port range
    }
 }
# Allow ingress traffic for ping traffic - ICMP message type 8
resource "ibm_is_security_group_rule" "mas_security_group_rule_ping" {
    group = "${ibm_is_vpc.mas_vpc.default_security_group}"    //  Network Security Group ID 
    direction = "ingress"                                     //  Direction of traffic 
    remote = "0.0.0.0/0"                                      //  Allowable remote source IP addresses
    icmp = {                                                  //  Protocal - ICMP
        type = 8                                              //  Message type
    }
 }
