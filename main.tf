module "aws_vpc" {
  source = "git::https://github.com/DuttaLalitha/ec2-creation.git"

  cidr_block="10.50.0.0/16"
  aws_vpc="mummy_vpc"
  aws_subnet1_cidr_block="10.50.0.0/17"
  aws_subnet1="mummy_subnet"
  igw="mummy_igw"
  aws_sg="mummy_sg"
  aws_rt="mummy_rt"
}
