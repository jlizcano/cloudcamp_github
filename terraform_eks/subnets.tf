resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr[0]
  availability_zone       = var.subnet_az[0]
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public1-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.public_subnet_cidr[1]
  availability_zone       = var.subnet_az[1]
  map_public_ip_on_launch = true
  tags = {
    Name                        = "public1-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[0]
  availability_zone = var.subnet_az[0]
  tags = {
    Name                               = "private1-1a"
    "kubernetes.io/cluster/eks"        = "shared"
    "kubernetes.io/role/iunternal-elb" = 1
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr[1]
  availability_zone = var.subnet_az[1]
  tags = {
    Name                               = "private1-1a"
    "kubernetes.io/cluster/eks"        = "shared"
    "kubernetes.io/role/iunternal-elb" = 1
  }
}