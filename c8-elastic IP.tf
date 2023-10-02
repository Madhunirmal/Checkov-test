resource "aws_eip" "bastion_eip" {

  depends_on = [ module.ec2_public_instance, module.vpc ]
  instance = module.ec2_public_instance.id[0]
  vpc = true
  tags = local.common_tags
  
}

