data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/*20.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

}

provider "aws" {
    region  = "ap-south-1"
    access_key = "AKIAZ4WS4SB6UHFDL6HW"
    secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "app-ssh-key"


  tags = {
    Name = var.ec2_name
  }
}
