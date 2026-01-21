# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 6.0"
#     }
#   }
# }
# provider "aws" {
#     region = "ap-south-1"

  
# }
# resource "aws_instance" "s1" {
#     ami = "ami-02b8269d5e85954ef"
    
#     instance_type = "t3.micro"
#     tags = {
#       name = "server1"
#     }
    
  
# } 

# provider "aws" {
#   region = "ap-south-1"
# }

# resource "aws_s3_bucket" "mybucket" {
#   bucket = "my-terraform-demo-bucket-harsh12345"

# }


# resource "aws_default_vpc" "vpc1" {
#   tags = {
#     name = "projectx_vpc"
#   }
  
  
# }

variable "ami_value" {
  description = "value for ami"
  default = "ami-02b8269d5e85954ef"
  
}
variable "instance_type" {
  description = "value for instance type "
  default = "t3.micro"
  
}
provider "aws" {
  region = "ap-south-1"
  
}

resource "aws_instance" "demo_instance" {
  ami = var.ami_value
  instance_type = var.instance_type
  

  
}