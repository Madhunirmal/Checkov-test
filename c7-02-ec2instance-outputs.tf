#aws ec2 terraform outputs

# public ec2 instance - Bastion host

#ec2 bastion public instance ip

#ec2 bastion public id_bastion" {
output "ec2_bastion_public_instance_id" {
    description = "list of ids of public instance"
    value = module.ec2_public_instance.id
  
}

#ec2 bastion public ip

output "ec2_bastion_public_ip" {
    description = "generate the public ip"
    value = module.ec2_public_instance.public_ip
  
}




# private ec2 instance - private host

#ec2 private instance id
output "ec2_private_instance_id" {
    description = "list of ids of private instance"
    value = module.ec2_private.id
  
}
#ec2 private id

output "ec2_private_ip" {
    description = "generate the private ip"
    value = module.ec2_private.private_ip
  
}