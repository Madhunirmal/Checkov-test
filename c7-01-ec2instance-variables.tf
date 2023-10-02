#AWS EC2 Instance type

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t3.micro" 
}

# instance key pair

variable "instance_keypair" {
    description = "keypair for the isntance"
    type = string
    default = "terraform.pem"
  
}

#AWS private instance count
variable "private_instance_count" {
    description = "private EC2 isntance count"
    type = number
    default = 2
}
