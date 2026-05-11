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
