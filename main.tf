data "aws_caller_identity" "joao" {}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo $(date)"
  }
}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["*-debian-*"]
  }
}

output "aws_ami" {
  value = data.aws_ami.example
}