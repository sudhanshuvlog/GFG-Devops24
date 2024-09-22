resource "aws_instance" "ec2" {
  ami                     = data.aws_ami.amiID.id
  instance_type           = var.InstanceType
  key_name = aws_key_pair.gfg27key.key_name
  tags = {
    Name=  var.Name
  }
  subnet_id = aws_subnet.mysubnet.id
  count = 2
  vpc_security_group_ids = [aws_security_group.mysg.id]
  depends_on = [ aws_key_pair.gfg27key, aws_vpc.myvpc ]
}

resource "aws_instance" "k8s_minikube" {
  ami                     = data.aws_ami.amiID.id
  instance_type           = "t2.medium"
  key_name = aws_key_pair.gfg27key.key_name
  tags = {
    Name=  var.Name
  }
  root_block_device {
    volume_size = 10
  }
  subnet_id = aws_subnet.mysubnet.id
  count = 1
  vpc_security_group_ids = [aws_security_group.mysg.id]
  depends_on = [ aws_key_pair.gfg27key, aws_vpc.myvpc ]
}


resource "aws_key_pair" "gfg27key" {
  key_name   =var.keyName
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

resource "aws_security_group" "mysg" {
 name = "gfg27sg"
 vpc_id = aws_vpc.myvpc.id

 dynamic "ingress" { #inbound #meta argument
    for_each = var.allowedPorts
    content {
    from_port        = ingress.value
    to_port          = ingress.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  egress { #outbound
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "null_resource" "runmyScript" {
  triggers = {
    always_run = timestamp()
  }
  provisioner "local-exec" {
    command = "echo hi hello > output.txt"
  }
  
}