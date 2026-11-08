resource "aws_instance" "conditions" {
  ami           = "ami-0055977a6e828a4f4"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.large" # key = expression? "true_value" : "False_value"
  vpc_security_group_ids = [aws_security_group.conditions.id]
  
  tags = {
    Name = "roboshop-conditions"
  }
}
resource "aws_security_group" "conditions" {
  name        = "web"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
}