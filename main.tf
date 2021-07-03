#create key pair on aws
resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh_key"
  public_key = var.public_key
}

resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins_sg"
  description = "Allow Jenkins Traffic"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "Allow from Personal CIDR block"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    description = "Allow SSH from Personal CIDR block"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Jenkins SG"
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
  key_name      = var.ssh_key_name
  #security_groups = [aws_security_group.jenkins_sg.name]
  #vpc_security_group_ids = [aws_security_group.sg-instance.id]

  subnet_id = module.vpc.public_subnets[0]

  root_block_device {
    volume_size           = "30"
    delete_on_termination = true
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file(var.private_key_path)
  }

  user_data = file("install_jenkins.sh")

  tags = {
    Name = "Jenkins"
  }
}



# # ec2-instance
# resource "aws_instance" "app_server" {
#   ami                    = data.aws_ami.aws-linux.id
#   instance_type          = var.instance_type
#   subnet_id              = aws_subnet.subnet_1.id
#   vpc_security_group_ids = [aws_security_group.sg-instance.id]
#   key_name               = var.ssh_key_name

#   root_block_device {
#     volume_size           = "30"
#     delete_on_termination = true
#   }

#   connection {
#     type        = "ssh"
#     host        = self.public_ip
#     user        = "ubuntu"
#     private_key = file(var.private_key_path)
#   }

#   user_data = file("scripts/user-data.sh")

#   tags = local.tags
# }