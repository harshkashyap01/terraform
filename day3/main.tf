provider "aws" {
  region = "ap-south-1"
}
module "ec2_instance" {
  source = "./modules/ec2_instance"
}
