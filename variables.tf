/* 
Common variables
*/

variable "region" {
  type        = string
  description = "AWS region to create resources"
}

variable "instance_type" {
  description = "The instance type"
  type        = string
}

variable "private_key_path" {
  description = "Private key"
  type        = string
}

variable "ssh_key_name" {
  description = "ssh key name"
  type        = string
}

variable "public_key" {
  description = "public_key to the ec2 instance"
  type        = string
}

/* 
VPC variables
*/

variable "vpc_name" {
  type        = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type        = string
  description = "AWS VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "AWS Public Subnets"
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "AWS Private Subnets"
}