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

variable "node_group_name" {
  type = string
}

variable "desired_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_unavailable" {
  type = number
}

variable "node_instance_type" {
  type = string

}
variable "node_capacity_type" {
  type = string
}
variable "node_ami_type" {
  type = string
}
