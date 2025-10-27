output "vpc_id" {
  value = aws_vpc.main.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

/*output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}*/


output "public_subnet_ids" {
  value = [for s in aws_subnet.public : s.id]
}

output "private_subnet_ids" {
  value = [for s in aws_subnet.private : s.id]
}


output "ec2_sg_id" {
  description = "ID of the EC2 security group"
  value       = aws_security_group.ec2.id
}



/*variable "vpc_id" { type = string }
variable "public_subnets" { type = list(string) }
variable "private_subnets" { type = list(string) }
variable "internet_gateway_id" { type =  list(string) }
variable "nat_gateway_id" { 
    type = string
    }*/
  
# modules/subnets/variables.tf

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}


variable "project_name" { 
  type = string 
  }

variable "public_subnet_cidrs" {
  type = map(string)
}

variable "private_subnet_cidrs" {
  type = map(string)
}

variable "vpc_id" { type = string }
variable "igw_id" { type = string }
variable "public_subnet_ids" { type = list(string) }
variable "private_subnet_ids" { type = list(string) }
variable "nat_gateway_ids" { type = string }
