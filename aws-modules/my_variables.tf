variable "my_env" {
    description = "this is the environment for infra"
    type = string
}
variable "ami_id" {
    description = "this is the AMI ID For Ec2"
    type = string
}
variable "instance_type" {
  description = "this is the type of instance for Ec2"
  type = string
}
variable "instance_count" {
  description = "this is the count of instances for Ec2"
  type = number
}