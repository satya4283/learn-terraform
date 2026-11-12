variable "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI id for ec2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of ec2 instance"
}

variable "ec2_tags" {
  type        = map
  default     = {
    name ="roboshop-mongodb"
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
