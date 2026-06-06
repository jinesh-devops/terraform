provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  instance_type = "t3.micro"
  ami           = "ami-091138d0f0d41ff90" # Ubuntu Server Ami Id
  tags = {
    Name = "Terraform EC2 Instance" # Name Tag for the EC2 instance
  }
  lifecycle {
    prevent_destroy = true # Prevents the resource from being destroyed,  terraform destroy will throw error
  }
}
