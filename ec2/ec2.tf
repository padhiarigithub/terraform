provider "aws" {
 region="ap-southeast-1"
}
#terraform script for ec2 instance
resource "aws_instance" "example" {
  ami           = "ami-0f2eac25772cd4e36" #change the value 
  instance_type = "t2.micro"
}
