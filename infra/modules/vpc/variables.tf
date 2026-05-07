variable "aws_region" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "project" {
  type = string
}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}
variable "availability_zones" {
  type = list(string)
}
