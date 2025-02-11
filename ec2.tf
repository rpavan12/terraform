


#variables
variable "type" {
  default = "t2.micro"
}
  



#Resources
resource "aws_instance" "pavan" {
  instance_type = var.type
  ami = "ami-09c813fb71547fc4f"  # RHEL-9-DevOps-Practice

}



#output