# create vpc
# terraform aws create vpc
resource "aws_vpc" "vpc" {
  cidr_block              = ""
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags      = {
    Name    = ""
  }
}

# create internet gateway and attach it to vpc
# terraform aws create internet gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = 

  tags      = {
    Name    = ""
  }
}

# create public subnet az1
# terraform aws create subnet
resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = 
  cidr_block              = ""
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags      = {
    Name    = "public subnet Az1"
  }
}


resource "aws_route_table" "public_route_table" {
  vpc_id       = 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = 
  }

  tags       = {
    Name     = "public route table"
  }
}

# associate public subnet az1 to "public route table"
# terraform aws associate subnet with route table
resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
  subnet_id           = 
  route_table_id      = 
}



