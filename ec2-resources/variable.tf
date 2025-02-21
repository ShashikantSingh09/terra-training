variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type = string
    default = "ami-04b4f1a9cf54c11d0"
  
}

variable "instance_type" {
    description = "The instance type to use for the EC2 instance"
    type = string
    default = "t2.micro"
}

variable "vpc_id" {
    description = "The VPC ID to use for the EC2 instance"
    type = string
}

variable "security_group_id" {
    description = "The security group ID to use for the EC2 instance"
    type = string
}

variable "public_subnet_id" {
    description = "The public subnet ID to use for the EC2 instance"
    type = string
}