provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0abcdef12345"
  instance_type = "t2.micro"
}
