/* provider.tf */
provider "aws" {
  region = "ap-northeast-1"
}

/* VPC */
resource "aws_vpc" "meetwithkids-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "meetwithkids-vpc"
  }
}

/* IGW */
resource "aws_internet_gateway" "meetwithkids-igw" {
  vpc_id = aws_vpc.meetwithkids-vpc.id

  tags = {
    Name = "meetwithkids-igw"
  }
}

/* Subnet */
resource "aws_subnet" "meetwithkids-front-1a" {
  vpc_id                  = aws_vpc.meetwithkids-vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "meetwithkids-front-1a"
  }
}
resource "aws_subnet" "meetwithkids-front-1c" {
  vpc_id                  = aws_vpc.meetwithkids-vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "meetwithkids-front-1c"
  }
}
resource "aws_subnet" "meetwithkids-back-1a" {
  vpc_id                  = aws_vpc.meetwithkids-vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "meetwithkids-back-1a"
  }
}
resource "aws_subnet" "meetwithkids-back-1c" {
  vpc_id                  = aws_vpc.meetwithkids-vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "meetwithkids-back-1c"
  }
}

/* RouteTable */
resource "aws_route_table" "meetwithkids-front-rtb" {
  vpc_id = aws_vpc.meetwithkids-vpc.id

  route {
    gateway_id = aws_internet_gateway.meetwithkids-igw.id
    cidr_block = "0.0.0.0/0"
  }

  tags = {
    Name = "meetwithkids-front-rtb"
  }
}
resource "aws_route_table" "meetwithkids-back-rtb" {
  vpc_id = aws_vpc.meetwithkids-vpc.id

  route {
    gateway_id = aws_internet_gateway.meetwithkids-igw.id
    cidr_block = "0.0.0.0/0"
  }

  tags = {
    Name = "meetwithkids-back-rtb"
  }
}

resource "aws_route_table_association" "meetwithkids-front-rtb-1a" {
  subnet_id      = aws_subnet.meetwithkids-front-1a.id
  route_table_id = aws_route_table.meetwithkids-front-rtb.id
}
resource "aws_route_table_association" "meetwithkids-front-rtb-1c" {
  subnet_id      = aws_subnet.meetwithkids-front-1c.id
  route_table_id = aws_route_table.meetwithkids-front-rtb.id
}
resource "aws_route_table_association" "meetwithkids-back-rtb-1a" {
  subnet_id      = aws_subnet.meetwithkids-back-1a.id
  route_table_id = aws_route_table.meetwithkids-back-rtb.id
}
resource "aws_route_table_association" "meetwithkids-back-rtb-1c" {
  subnet_id      = aws_subnet.meetwithkids-back-1c.id
  route_table_id = aws_route_table.meetwithkids-back-rtb.id
}


/* Add   after ECS deploy  */
resource "aws_eip" "meetwithkids-ngw-eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.meetwithkids-igw]

  tags = {
    Name = "meetwithkids-ngw-eip"
  }
}


resource "aws_nat_gateway" "meetwithkids-ngw" {
  allocation_id = aws_eip.meetwithkids-ngw-eip.id
  subnet_id     = aws_subnet.meetwithkids-front-1a.id
  depends_on    = [aws_internet_gateway.meetwithkids-igw]

  tags = {
    Name = "meetwithkids-ngw"
  }
}