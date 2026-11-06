variable "ami_id" {
  type        = string
  description = "The Amazon Machine Image (AMI) ID to use for the EC2 instance"
  default     = "ami-0055977a6e828a4f4" # Replace with your default AMI ID
}

variable "instance_type" {
  type        = string
  description = "instance type for the EC2 instance"
  default     = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "roboshop-mongodb"
        Environment = "dev"
        Terraform = "true"
        project = "roboshop"
        Component = "mongodb "
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
#14,24,29 lines has some error correct it