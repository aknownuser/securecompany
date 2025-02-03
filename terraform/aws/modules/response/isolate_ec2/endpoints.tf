resource "aws_vpc_endpoint" "ssm_edp" {
  vpc_id = aws_vpc.isolated.id
  service_name = "com.amazonaws.${var.region}.ssm"
  tags = {
        Name = "security"
    }
}

resource "aws_vpc_endpoint" "ssm_message_edp" {
  vpc_id = aws_vpc.isolated.id
  service_name = "com.amazonaws.${var.region}.ssmmessages"
  tags = {
        Name = "security"
    }
}

resource "aws_vpc_endpoint" "ssm_ec2_edp" {
  vpc_id = aws_vpc.isolated.id
  service_name = "com.amazonaws.${var.region}.ec2messages"
  tags = {
        Name = "security"
    }
}