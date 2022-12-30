variable "instancetype" {
  type        = string
  description = "set aws instance type"
}

variable "sg_name" {
  type = string
  description = "set the security group name"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "set aws tag"
}
