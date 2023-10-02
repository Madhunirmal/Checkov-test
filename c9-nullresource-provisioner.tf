#create a null resource and provisioners

resource "null_resource" "name" {

    depends_on = [ module.ec2_public_instance ]

    ## connection block for provisioners to connect to EC2 instance

  connection {
    type     = "ssh"
    host     = aws_eip.bastion_eip.public_ip
    user     = "ubuntu"
    password = ""
    private_key = file("private-key/terraform.pem")    
  }
  
## File provisioner : copies terraform.pem file to /tmp/terraform.pem

provisioner "file" {
  source      = "private-key/terraform.pem"
  destination = "/tmp/terraform.pem"

}

## Remote Exec Provisioner: Using remote-exec provisioner fix the private key permissions on Bastion Host

provisioner "remote-exec" {
    inline = [ 
        "sudo chmod 400 /tmp/terraform.pem"
     ]
  
}

## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)

provisioner "local-exec" {
    command = "echo VPC created on 'date' and VPC ID :${module.vpc.vpc_id}  >> vpc_creation.txt"
    working_dir = "local-exec-file-outputs/"
    #on_failure = continue
 }
# Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during destroy Resource)
/*provisioner "local-exec" {
    command = "echo VPC destroyed on 'date' and VPC ID :${module.vpc.vpc_id}  >> vpc_creation.txt"
    working_dir = "local-exec-file-outputs/"
    when = destroy
    #on_failure = continue

 } */

}

#creation time provisioners


#Destroy time provisioners
