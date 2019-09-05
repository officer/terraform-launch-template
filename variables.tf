variable "namespace" {
  description = "namespace of the resources"
  type        = "string"
  default     = "lt"
}


variable "instance_type" {
  description   = "The type of the instance."
  type          = "string"
  default       = "t2.nano"
}

variable "image_id" {
  description   = "The AMI from which to launch the instance."
  type          = "string"
  default       = "none"
}

variable "iam_instance_profile_arn" {
  description   = "The IAM Instance Profile ARN to launch the instance with"
  type          = "string"
}


variable "key_name" {
  description   = "The key name to use for the instance."
  type          = "string"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to associate."
  type        = "string"
}


variable "vpc_security_group_ids" {
  description   = "A list of security group IDs to associate with."
  type          = "list"

}

variable "user_data" {
  description   = "The user data to provide when launching the instance. will be base64-encoded internally"
  type          = "string"
  default       = ""
}


variable "tags" {
  description   = "A mapping of tags to assign to the launch template."
  type          = "map"
}

variable "instance_tag" {
  description   = "The tags to apply to the instances during launch."
  type          = "map"
}

variable "volume_tag" {
  description   = "The tags to apply to the volumes during launch."
  type          = "map"
}


