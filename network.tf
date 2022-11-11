resource "aws_vpc" "vpc" {

  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name         = local.vpc_name
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name         = local.igw_name
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code
  }

}

resource "aws_route_table" "public-rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name         = local.public-rtb
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code
  }
}

resource "aws_default_route_table" "default-rtb" {
  default_route_table_id = aws_vpc.vpc.default_route_table_id

  route = []

  tags = {
    Name         = local.default-vpc-rtb
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code
  }
}



resource "aws_subnet" "public-subnet-01" {
  cidr_block              = var.vpc_cidr_subnets[0]
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.aws_region_us_east_north_virginia[0]

  tags = {
    Name         = local.subnet-01_name
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code

  }

}

resource "aws_subnet" "private-subnet-05" {
  cidr_block = var.vpc_cidr_subnets[5]
  vpc_id     = aws_vpc.vpc.id
  #map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone = var.aws_region_us_east_north_virginia[5]


  tags = {
    Name         = local.subnet-06_name
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code

  }

}


resource "aws_route_table_association" "route-table-public-subnet-01" {
  subnet_id      = aws_subnet.public-subnet-01.id
  route_table_id = aws_route_table.public-rtb.id # route_table
}


resource "aws_route_table_association" "route-table-private-subnet-05" {
  subnet_id      = aws_subnet.private-subnet-05.id
  route_table_id = aws_default_route_table.default-rtb.id # default route table to private subnet(s)
}





