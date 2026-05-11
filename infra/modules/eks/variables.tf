variable "public_subnet_ids" {
  type = list(string)
}
variable "private_subnet_ids" {
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
variable "project" {
  type = string
}
