data "aws_eip" "nat1" {
  id = "eipalloc-068daa25823e69b65"
}

data "aws_eip" "nat2" {
  id = "eipalloc-0704ac14fef767bbd"
}
/* resource "aws_eip" "nat1" {
  depends_on = [aws_internet_gateway.main]
}

resource "aws_eip" "nat2" {
  depends_on = [aws_internet_gateway.main]
} */