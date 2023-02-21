resource "aws_instance" "terraform-cloud-vm" {
  ami                    = data.aws_ami.amzlinux.id
  instance_type          = var.instance_type
  count                  = 1
  key_name               = "freqtrade"
  user_data              = file("install.sh")
  subnet_id              = data.terraform_remote_state.vpc.outputs.public_subnets[0]          
  vpc_security_group_ids = [aws_security_group.terraform-cloud-vm-sg.id,]
  tags = {
    "Name" = "terraform-cloud-vm-${count.index}"
  }
}
