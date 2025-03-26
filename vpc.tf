resource "aws_vpc" "sid" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}


resource "aws_default_subnet" "sid_sub1" {
  availability_zone = "${var.region}a"
}

resource "aws_default_subnet" "sid_sub2" {
  availability_zone = "${var.region}b"
}

resource "aws_default_subnet" "sid_sub3" {
  availability_zone = "${var.region}c"
}

