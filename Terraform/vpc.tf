resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}


resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.subenet1AZ
  map_public_ip_on_launch = true
  tags = {
    Name = var.subenet1Name
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "myinternetgateway"
  }
}

resource "aws_route_table" "mygfgrouteTable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = "gfgRouteTable"
  }
}

resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.mygfgrouteTable.id
}