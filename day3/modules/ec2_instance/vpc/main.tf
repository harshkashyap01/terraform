resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name = "terraform-vpc"
  }
}
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
  
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true
    tags = {
        name = "public-subnet"
    }
}