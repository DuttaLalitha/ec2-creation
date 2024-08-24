resource "aws_instance" "web" {
  ami           = "ami-0a0e5d9c7acc336f1"
  key_name = "keypairfirst"
  instance_type = "t2.micro"
  security_groups = ["sg-040772ea5516a2cf9"]
  subnet_id = aws_subnet.main.id
  user_data = file("applications.sh")

  tags = {
    Name = "aws_vpc_instance"
  }
}