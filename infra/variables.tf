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
variable "cluster_name" {
  type = string
}
variable "cluster_version" {
  type = string
}
