variable "aws_region" {
  description = "AWS region for the infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Plausible Amazon Linux 2023 AMI ID for the selected region."
  type        = string
  default     = "ami-0230bd60aa48260c6"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "ssh_cidr" {
  description = "IPv4 CIDR allowed to connect to SSH; provide your own restricted range."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.ssh_cidr)) && var.ssh_cidr != "0.0.0.0/0"
    error_message = "ssh_cidr must be a valid IPv4 CIDR and must not be 0.0.0.0/0."
  }
}
