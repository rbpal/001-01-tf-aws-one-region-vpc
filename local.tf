locals {

  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}-${var.application}"
    billing_code = var.billing_code
  }


  vpc_name = join("-",
    [
      "vpc",
      var.company,
      var.project,
      var.application
  ])


  igw_name = join("-",
    [
      "igw",
      var.company,
      var.project,
      var.application
  ])


  public-rtb = join("-",
    [
      "public-rtb",
      var.company,
      var.project,
      var.application
  ])


  private-rtb = join("-",
    [
      "private-rtb",
      var.company,
      var.project,
      var.application
  ])

  default-vpc-rtb = join("-",
    [
      "default-vpc-rtb",
      var.company,
      var.project,
      var.application
  ])


  subnet-01_name = "public-${var.vpc_cidr_subnets[0]}-${var.aws_region_us_east_north_virginia[0]}"

  subnet-02_name = "public-${var.vpc_cidr_subnets[1]}-${var.aws_region_us_east_north_virginia[1]}"

  subnet-03_name = "public-${var.vpc_cidr_subnets[2]}-${var.aws_region_us_east_north_virginia[2]}"

  subnet-04_name = "private-${var.vpc_cidr_subnets[3]}-${var.aws_region_us_east_north_virginia[3]}"

  subnet-05_name = "private-${var.vpc_cidr_subnets[4]}-${var.aws_region_us_east_north_virginia[4]}"

  subnet-06_name = "private-${var.vpc_cidr_subnets[5]}-${var.aws_region_us_east_north_virginia[5]}"



}
