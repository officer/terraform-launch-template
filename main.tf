locals {
  ami_specified = "${var.image_id != "none" ? true : false }"
}


resource "aws_launch_template" "template" {
  name_prefix               = "${var.namespace}-"

  # Instance configurations
  image_id                  = "${local.ami_specified ? var.image_id : data.aws_ami.myami.id}"
  instance_type             = "${var.instance_type}"
  key_name                  = "${var.key_name}"
  user_data                 = "${base64decode(var.user_data)}"
  iam_instance_profile {
      arn   = "${var.iam_instance_profile_arn}"
  }

  network_interfaces {
    associate_public_ip_address = true
    subnet_id                   = "${var.subnet_id}"
    security_groups             = "${var.vpc_security_group_ids}"
    delete_on_termination       = true
  }

  tag_specifications {
      resource_type         = "instance"
      tags                  = "${var.instance_tag}"
  }

  tag_specifications {
      resource_type         = "volume"
      tags                  = "${var.volume_tag}"
  }
  
}
