
# My AMI
data "aws_ami" "myami" {
  owners = ["${data.aws_caller_identity.self.account_id}"]
  most_recent = true
  filter {
      name = "name"
      values = ["MyWebServer*"]
  }
}