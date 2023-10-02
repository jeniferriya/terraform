provider "aws" {
  region = "ap-south-1"

}
resource "aws_instance" "Teraa" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  key_name               = "terra-key"
 vpc_security_group_ids = ["sg-0b4515d2fd4ab1e04"]
  tags = {
    Name = "tera-instance"
  }

}