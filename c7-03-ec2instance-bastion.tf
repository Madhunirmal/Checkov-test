# aws ec2 instance bastion

module "ec2_public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  name = "${var.environment}-Bastion host"


  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  # monitoring             = true
  vpc_security_group_ids = module.public_bastion_sg.security_group_name
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags
}
