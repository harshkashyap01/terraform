#creating a vpc and launching a ec2 instance in it and with that  deploy a python application 
provider "aws" {
  region = "ap-south-1"
}

variable "cidr" {
  default = "10.0.0.0/16"
}

resource "aws_vpc" "my-aws_vpc" {
  cidr_block = var.cidr
}
resource "aws_subnet" "my-subnet" {
    vpc_id = aws_vpc.my-aws_vpc
    cidr_block = "10.0.0.0/24"
    tags = {
        name = "demo-subnet"
    }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.my-aws_vpc
  

}
resource "aws_route_table" "my-aws_route_table" {

    vpc_id = aws_vpc.my-aws_vpc
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id 
    }

    
}



#tried well but there are some mistake to work on 