module "dev-app" {
    source = "./aws-modules"
    my_env = "dev"
    instance_type = "t3.micro"
    ami_id = "ami-02b8269d5e85954ef"
    instance_count = 1
}

module "stg-app" {
    source = "./aws-modules"
    my_env = "stg"
    instance_type = "t3.micro"
    ami_id = "ami-02b8269d5e85954ef"
    instance_count = 1
}
module "prd-app" {
    source = "./aws-modules"
    my_env = "prd"
    instance_type = "t3.micro"
    ami_id = "ami-02b8269d5e85954ef"
    instance_count = 2
}