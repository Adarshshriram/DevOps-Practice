module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "Terraform-instance"

  instance_type          = "t2.micro"
  ami                    = "ami-0843a4d6dc2130849"
  key_name               = "march-9"
  monitoring             = true
  vpc_security_group_ids = ["sg-040c816bc54250c5e"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}