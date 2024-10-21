variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "availability_zones" {
  type    = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "custom_tags" {
  type = map()
  default = {
    Terraform = true
    Environment = "dev"
  }
}