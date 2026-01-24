provider "aws" {
    region = "ap-south-1"
}
variable "ami_value" {
    description = "this is the ami value"
  
}
variable "instance_type_value" {
    description = "this is the instance type value"
 
}
resource "aws_instance" "demo-ec2" {
    ami = var.ami_value
    instance_type =  var.instance_type_value

}