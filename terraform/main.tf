provider "aws" {
  region     = "ap-south-1"
  
}

resource "aws_instance" "my_ec2" {
  ami                    = "ami-0f5ee92e2d63afc18"   # Ubuntu AMI
  instance_type          = "t2.micro"
  key_name               = "terraform-ansible"      # Existing Key Pair Name
  vpc_security_group_ids = ["sg-006048b32ba8b74f0"] # Existing Security Group ID

  tags = {
    Name = "Terraform-EC2"
  }
}