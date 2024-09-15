variable "aws_instance_type" {
  description = "The type of instance you want to create."
  type        = string
  default     = "t2.micro"

  validation {
    condition     = var.aws_instance_type == "t2.micro"
    error_message = "The aws_instance_type must be 't2.micro'."
  }
}

variable "root_volume_size" {
  description = "Configuration for the root volume."
  type = object({
    v_size = number
    v_type = string
  })
  default = {
    v_size = 20
    v_type = "gp2"
  }
}

variable "additional_tags" {
  description = "Additional tags for the instance."
  type        = map(string)
  default     = {}
}
