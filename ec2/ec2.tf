provider "aws" {
 region="ap-southeast-1"
  access_key = "AKIASBOQXMAZ5TWTIEUB"
 secret_key = "rk0hJ8LEXNu8jJpj7Qz2Whr/elbQEUeufY9w6I7P"
}
#terraform script for ec2 instance
resource "aws_instance" "example" {
  ami           = "ami-0f2eac25772cd4e36" #change the value 
  instance_type = "t2.micro"
}
