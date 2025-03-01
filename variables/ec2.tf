#provider
# provider "aws" {
#   access_key = "AKIAX5ZI6AQ5DRU6GPZC"
#   secret_key = "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"
#   region     = "us-east-1"
# }


#variables
variable "type" {
  default = "t3.micro"
}



#Resources
resource "aws_security_group" "mysg" {
  name = "sg"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
resource "aws_instance" "pavan" {
  instance_type = var.type
  ami           = "ami-09c813fb71547fc4f" # RHEL-9-DevOps-Practice
  vpc_security_group_ids = [aws_security_group.mysg.id]
  
}


#output
output "instance_id" {
  value = aws_instance.pavan.id
}