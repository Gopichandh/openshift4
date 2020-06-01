resource "aws_subnet" "ocp_pri_subnet" {
    count                   =  length(var.aws_azs)
    vpc_id                  =  aws_vpc.main.id
    cidr_block              =  element(var.vpc_private_subnet_cidrs, count.index)
    availability_zone       =  format("%s%s", element(list(var.aws_region), count.index), element(var.aws_azs, count.index))
  tags = {
    Clustername = "antman"
    Name = "ocpops"
  }
}

resource "aws_subnet" "ocp_pub_subnet" {
    count                   =  length(var.aws_azs)
    vpc_id                  =  aws_vpc.main.id
    cidr_block              =  element(var.vpc_public_subnet_cidrs, count.index)
    availability_zone       =  format("%s%s", element(list(var.aws_region), count.index), element(var.aws_azs, count.index))
  tags = {
    Clustername = "antman"
    Name = "ocpops"
  }
}