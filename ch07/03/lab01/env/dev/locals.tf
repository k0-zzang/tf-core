locals {
  org = "tf-core"
  project = "lab01"
  environment = var.env

  namespace = "${local.org}-${local.project}-${local.environment}"

  instance = {
    name = "instance"

    ami                         = data.aws_ami.amazon_linux.id
    instance_type               = var.instance_instance_type
    associate_public_ip_address = true

    allow_access = {
      port        = 80
      cidr_blocks = var.instance_allow_access_cidr_blocks
    }
  }

  iamrole = {
    name = "instance"

    assume_role_policy = data.aws_iam_policy_document.ec2_assume_role.json
    policy_arn         = data.aws_iam_policy.aws_ssm_core.arn
  }
}