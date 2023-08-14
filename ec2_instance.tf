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
        region = "us-east-1"
        access_key = "AKIAZ4WS4SB6UHFDL6HW"
        secret_key = "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"
}

resource "aws_instance" "My_ec2_instances"{
        ami = "ami-08c40ec9ead489470"
        instance_type = "t2.micro"
        tags = {
                Name = "terraformtest_instance"
}
}
