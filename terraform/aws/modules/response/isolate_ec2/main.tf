resource "aws_vpc" "isolated" {
    // Limited CIDR to max of 16 devices to have the network under control 
    // This range of CIDR should be controlled and not used anywhere else
    cidr_block = "10.0.0.1/28"
    tags = {
        Name = "security"
    }

}
// Setup required data for AWS SSM agent to access the EC2 instance

data "aws_iam_policy_document" "assume_role" {
    statement {
      effect = "Allow"

      principals {
        type = "Service"
        identifiers = [ "ssm.amazonaws.com" ]
      }
      actions = [ "sts:AssumeRole" ]
    }
}

resource "aws_iam_role" "run_command_role" {
  name = "run_command_role"
  assume_role_policy = data.aws_iam_policy_document.assume_role
}

resource "aws_iam_role_policy_attachment" "run_command_attach" {
  role = aws_iam_role.run_command_role
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_ssm_activation" "run_command" {
  name = "run_command_activation"
  description = "Runcommand activation"
  iam_role = aws_iam_role.run_command_role.id
  depends_on = [ aws_iam_role_policy_attachment.run_command_attach ]
}