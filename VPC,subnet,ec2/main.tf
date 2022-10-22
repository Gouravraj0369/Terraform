provider "aws" {
   region     = "ap-south-1"
   access_key = "gakge;ajg/'aj"
   secret_key = "gjagfa;fgaik"
}

locals {
  env = "dev"
}

resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.env}-vpc-tag"
  }
}

resource "aws_subnet" "demo-subnet" {
  vpc_id = aws_vpc.demo-vpc.id
  cidr_block = "10.5.0.0/20"

  tags = {
    Name = "${local.env}-subnet-tag"
  }
}

resource "aws_instance" "ec2_demo" {
   
   ami           = "ami-068257025f72f470d"
   instance_type = "t2.micro"
   associate_public_ip_address = true
   subnet_id = aws_subnet.demo-subnet.id
   
   tags = {
           Name = "${local.env} - demo EC2"
   }
}

output "my_console_output" {
  value = aws_instance.ec2_demo.public_ip
} 
=======
provider "aws" {
   region     = "ap-south-1"
   access_key = "fdkhahg'aoihg"
   secret_key = "uagh;aj'gfujagaega"
}

locals {
  env = "demo"
}

resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.env}-vpc-tag"
  }
}

resource "aws_subnet" "demo-subnet" {
  vpc_id = aws_vpc.demo-vpc.id
  cidr_block = "10.5.0.0/20"

  tags = {
    Name = "${local.env}-subnet-tag"
  }
}

resource "aws_instance" "ec2_demo" {
   
   ami           = "ami-068257025f72f470d"
   instance_type = "t2.micro"
   associate_public_ip_address = true
   subnet_id = aws_subnet.demo-subnet.id
   
   tags = {
           Name = "${local.env} - demo EC2"
   }
}

output "my_console_output" {
  value = aws_instance.ec2_demo.public_ip
} 


