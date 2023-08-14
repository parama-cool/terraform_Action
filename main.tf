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
  ami = ami-0da59f1af71ea4ad2
  instance_type = "t2.micro"
  key = "terraform_ac.pem"


  tags = {
    Name = var.ec2_name
  }
}
