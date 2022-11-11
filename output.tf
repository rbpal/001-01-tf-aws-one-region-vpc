output "aws_vpc" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.vpc.cidr_block
}