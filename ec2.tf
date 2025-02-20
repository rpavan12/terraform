#provider
# provider "aws" {
#   access_key = "AKIAX5ZI6AQ5CYLMHUMN"
#   secret_key = "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"
#   region     = "us-east-1"
# }


#variables
variable "type" {
  default = "t3.micro"
}




#Resources
resource "aws_instance" "pavan" {
  instance_type = var.type
  ami           = "ami-09c813fb71547fc4f" # RHEL-9-DevOps-Practice

}



#output