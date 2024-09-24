resource "aws_instance" "terraform" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]
  tags = {
    name = "terraform"
  }
}
resource "aws_security_group" "allow_ssh_terraform" {
  name              = "allow_sshh" #allpw ssh is already there in the account
  description       = "allow port no 22 for ssh access"

  #usually we allow everything for egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   tags = {
      Name = "allow_sshh"
  }
}