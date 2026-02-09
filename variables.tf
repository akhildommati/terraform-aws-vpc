variable "project_name" {
    
}

variable "environment" {

}


variable "vpc_cidr" {
  
}

variable "enable_dns_hostnames" {

  default = true
}

variable "common_tags" {
    type = map
    #default = {}
 
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}


variable "public_subnet_cidrs" {
    type = list(string)
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please provide 2 valid public subnet cidrs"
    }
  
}

variable "public_subnet_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to public subnets"
}

variable "private_subnet_cidrs" {
    type = list(string)
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "please provide 2 valid private subnet cidrs"
    }
  
}

variable "private_subnet_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to private subnets"
}

variable "database_subnet_cidrs" {
    type = list(string)
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "please provide 2 valid database subnet cidrs"
    }
  
}

variable "database_subnet_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to database subnets"
}

variable "public_route_table_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to public route tables"
}

variable "private_route_table_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to private route tables"
}

variable "database_route_table_tags" {
  type = map(string)
  default = {}
  description = "Tags to apply to database route tables"
}

variable "is_peering_required" {
  default = false
}

variable "vpc_peering_tags" {
  default = {}
}

