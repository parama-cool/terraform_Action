terraform{
        required_providers{
        aws={
        source = "hashicorp/aws"
        version = "5.12.0"
}
}
required_version = ">= 1.2.0"
}
provider "aws"{
        region = "ap-south-1"
        access_key = "AKIAZ4WS4SB6UHFDL6HW"
        secret_key = "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"
}

resource "aws_instance" "My_ec2_instance"{
        ami = "ami-08c40ec9ead489470"
        instance_type = "t2.micro"
        tags = {
                Name = "terraformtest_instance"
        }
}
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "s3bucketawsssss"
  acl    = "private"

  versioning = {
    enabled = true
  }
}
