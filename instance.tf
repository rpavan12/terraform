# variable

# provider
provider "aws" {
  access_key = "AKIAX5ZI6AQ5JWGMJXHP"
  secret_key = "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"
  region = "us-east-1"
}



# Resources
resource "aws_instance" "pavaninstance" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    key_name = "pavankey"
  
}


# output
output "pavaninstanceID" {value=aws_instance.pavaninstance.id} 