resource "aws_vpc" "default" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true

    tags = {
        Name = "default-vpc"
    } 
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.default.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

    tags = {
        Name = "public-subnet"
    }
}