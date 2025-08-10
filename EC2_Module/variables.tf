variable "ec2_server_count" {
  type        = number
  default     = 1
  description = "Number of EC2 Servers to be Created"
}

variable "ami" {
  type        = string
  description = "AMI for EC2 Server"
}

variable "instance_type" {
  type        = string
  description = "Instance Type for EC2 Server"
}

variable "availability_zone" {
  type        = string
  description = "Availability Zone for EC2 Server"
}

variable "key_name" {
  type        = string
  description = "Key Pair for EC2 Server"
}

variable "vpc_id" {
  type        = string
  default     = null
  description = "Virtual Private Cloud ID for EC2 Server"
}

variable "subnet_id" {
  type        = string
  default     = null
  description = "Subnet ID for EC2 Server"
}

variable "tags" {
  type        = map(string)
  description = "Commong Tags for EC2 Server"
}

variable "ec2_server_name" {
  type        = string
  description = "Name of EC2 Server"
}