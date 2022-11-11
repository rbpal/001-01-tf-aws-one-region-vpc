variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  default     = "awsaccesskey"
}


variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  default     = "awssecretkey"
}


variable "aws_region_us_east_north_virginia" {
  type        = list(string)
  description = "US East N Virginia Region for AWS Resources"
  default     = null
}


variable "vpc_cidr_block" {
  type        = string
  description = "CIDR Block for VPC"
  default     = null
}


variable "vpc_cidr_subnets" {
  type        = list(string)
  description = "CIDR Blocks for Subnets in VPC"
  default     = null
}


variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = null
}


variable "project" {
  type        = string
  description = "Project name for resource tagging"
  default     = null
}


variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = null
}


variable "application" {
  type        = string
  description = "Project name for resource tagging"
  default     = null
}


variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
  default     = "000-111-222"
}


variable "instance_type" {
  type        = string
  description = "Type for EC2 Instnace"
  default     = "t2.micro"
}


variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}


variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}

variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = "us-east-1"
}
