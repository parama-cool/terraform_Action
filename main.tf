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
    region  = "us-east-2"
    access_key = "AKIAZ4WS4SB6UHFDL6HW"
    secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  key_name      = "terrakey.pem"

  tags = {
    Name = var.ec2_name
  }
}
