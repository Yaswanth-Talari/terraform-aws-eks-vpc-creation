variable "vpc_cidr" {
    description = "The CIDR block for VPC"
    type        = string
  
}

variable "availability_zones" {
    description = "Availability zones"
    type        = list(string)
  
}
variable "private_subnet_cidrs" {
    description = "List of CIDR blocks for private subnets"
    type        = list(string)
  
}


variable "public_subnet_cidrs" {
    description = "List of CIDR blocks for public subnets"
    type        = list(string)
  
}

variable "cluster_name" {
    description = "Name of the EKS cluster"
    type        = string
  
}