# ec2-creation


module "aws_vpc" {
  source = "git::https://github.com/DuttaLalitha/ec2-creation.git"

  cidr_block="10.40.0.0/16"
  aws_vpc="practise"
  aws_subnet1_cidr_block="10.40.0.0/17"
  aws_subnet1="practise_subnet"
  igw="practise_igw"
  aws_sg="practise_sg"
  aws_rt="practise_rt"
}
