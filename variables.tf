variable "dynamo_table_name" {
  type = string
  default = "free_camp"
  description = "this is the table name for Dynamodb"
}

variable "ami_id" {
  default = "ami-02b8269d5e85954ef"
  type = string
  description = "this is the AMI ID for the EC2 instance"

}