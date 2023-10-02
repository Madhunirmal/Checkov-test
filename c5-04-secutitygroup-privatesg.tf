#AWS EC2 security group terraform module
# Security Group for public Bastion host

/*module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "5.1.0"
  */

  module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.6.1"

  name = "private-sg"
  description = "SG WITH SSH PORT OPEN with HTTP & ssh port for entire vpc"
  vpc_id = module.vpc.vpc_id

  #Ingress Rules & CIDR block

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]

  #Egress Rule = all - all- open
  
  egress_rules       = ["all-all"]
  tags = local.common_tags

}