#AWS EC2 security group terraform module
# Security Group for public Bastion host

/*module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "3.9.0"
  #version = "~> 2.78 "
  */

  module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.6.1"
  # insert the 3 required variables here


  name = "public-bastion-sg"
  description = "SG WITH SSH PORT OPEN FOR EVERYBODY &"
  vpc_id = module.vpc.vpc_id

  #Ingress Rules & CIDR block

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]

  #Egress Rule = all - all- open
  
  egress_rules       = ["all-all"]
  tags = local.common_tags

}