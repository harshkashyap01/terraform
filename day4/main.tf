provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "day4-demo" {
    instance_type = "t3.micro"
    ami = "ami-0ced6a024bb18ff2e"
}
resource "aws_s3_bucket" "s3_bucket" {
    bucket = "nextin-s3"
  
}