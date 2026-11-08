variable "ami_id" {
  type        = string
  description = "The Amazon Machine Image (AMI) ID to use for the EC2 instance"
  default     = "ami-0055977a6e828a4f4" # Replace with your default AMI ID
}

variable "instance_type" {
  type        = string
  description = "instance type for the EC2 instance"
  default     = "t3.micro"

validation {
    condition = contains(
      ["t3.micro", "t3.small", "t3.medium", "t3.large"],
      var.instance_type
    )

    error_message = "The environment must be t3.micro or t3.small or t3.medium or t3.large."
    }
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
