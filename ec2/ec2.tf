provider "aws" {
 region="ap-southeast-1"
  access_key = "AKIASBOQXMAZQAIYUK2M"
 secret_key = "o3ISwPkeh2C18rmz7K+6StZeCJPQwdWjVPjdlB1l"
}
#terraform script for ec2 instance
resource "aws_instance" "example" {
  ami           = "ami-0f2eac25772cd4e36" #change the value 
  instance_type = "t2.micro"
}
