# Use data source to retrieve an Amazon Linux 2 AMI
data "aws_ami" "amazon-ami" {
  most_recent = true
  owners      = ["amazon"]
  
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


# launch ec2 instance and install your website
resource "aws_instance" "ec2_instance" {
  ami                    = 
  subnet_id              = 
  instance_type          = "t2.micro"
  key_name               = ""
  vpc_security_group_ids = []
  user_data              = 

  tags = {
    Name = "test-instance"
  }
}
