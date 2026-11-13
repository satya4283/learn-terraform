variable "environment" {
    default = "dev"
}

variable "project" {
    default = "roboshop"
}

variable "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI id for ec2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of ec2 instance"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium","t3.large"], var.instance_type)
    error_message = "Instance type must be one of t3.micro,t3.small,t3.medium,t3.large"
  }
}

variable "instances" {
    type = list 
    default = ["mongodb" ,"redis", "mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]
}


variable "zone_id" {
    default = "Z0887025E5L6AEYTWXQN"
}

variable "domain_name" {
    default = "daws92ss.store"
}