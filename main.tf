provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "srv01" {
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  tags = {
      "Name" = "Webserver-Sanjeet"
  }
}
output "ipaddress" {
  value = aws_instance.srv01.public_ip
}