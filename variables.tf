variable "vpc_cidr" {
  description = "CIDR range for the vpc to be created"
  type        = string
}

variable "enable_dns_support" {
  description = ""
  type        = bool
}

variable "enable_dns_hostnames" {
  description = ""
  type        = bool
}

variable "vpc_tags" {
  description = ""
  type        = map(string)
}

variable "availability_zone" {
  description = ""
  type        = string
}

variable "pub_cidr" {
  description = ""
  type        = string
}

variable "pub_tags" {
  description = ""
  type        = map(string)
}