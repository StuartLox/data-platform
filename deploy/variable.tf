variable "region" {
  default = "ap-southeast-2"
}

variable "key" {
  description = "Enter Key name"
}

variable "sub_ids" {
  default = []
}

variable "instance-ami" {
  default = "ami-0159ec8365aea1724" # EKS AMI Sydney
}

variable "instance_type" {
  default = "t3.medium"
}

variable "cluster-name" {
  description = "Cluster Name"
}

variable "server-name" {
  description = "Ec2 Server Name"
}

variable "vpc_name" {
  description = "VPC name"
}

variable "kube_config" {}
