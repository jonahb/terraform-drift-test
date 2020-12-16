terraform {
  backend "s3" {
    bucket         = "s12t"
    key            = "jonah-aws.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_security_group" "test" {
  name   = "test"
  vpc_id = "vpc-896169ec"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test"
  }
}
