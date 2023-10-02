# public bastion host security group outputs




# public_bastion_sg_group_id
output "public_bastion_sg_group_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.security_group_id
}


# public_bastion_sg_group_vpc_id
output "public_bastion_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_sg.security_group_vpc_id
}


# Public_bastion_sg_group_name
output "Public_bastion_sg_group_name" {
  description = "The name of the security group"
  value       = module.public_bastion_sg.security_group_name
}


#private_sg

# private_sg_group_id
output "private_sg_group_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}


# private_sg_group_vpc_id
output "private_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}


# Private_sg_group_name
output "Private_sg_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}