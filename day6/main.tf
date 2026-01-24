provider "aws" {
    region = "ap-south-1"
}
variable "ami" {
  default = "ami-0ced6a024bb18ff2e"
}
variable "instance_type" {
  default = "t3.micro"
}

module "ec2_instance" {
  source = "./modules/ec2-instance" 
  ami_value = var.ami
  instance_type_value = var.instance_type
}