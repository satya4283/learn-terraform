variable "ami_id" {
  type        = string
  #default     = "ami-0055977a6e828a4f4"
  description = "AMI id for ec2 instance"
}

variable "instance_type" {
  type        = string
  #default     = "t3.micro"
  description = "Instance type of ec2 instance"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium","t3.large"], var.instance_type)
    error_message = "Instance type must be one of t3.micro,t3.small,t3.medium,t3.large"
  }
}

variable "ec2_tags" {
  type        = map
  default     = {
    Name ="roboshop-mongodb"
    terraform = "true"
    Environment = "dev"
    Component = "mongodb"
    Project = "roboshopo" 
  }
  
}

variable "cidr" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "from_port" {
    type = number
    default = 0
  
}
