module "web-server-1" {
    source = "./modules/ec2"

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.medium"
    name = "web-server-1"
    subnet_id = module.network-1.public_subnet_ids[0]
}

module "web-server-2" {
    source = "./modules/ec2"

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.medium"
    name = "web-server-2"
    subnet_id = module.network-1.public_subnet_ids[1]
}

module "backend-server-1" {
    source = "./modules/ec2"

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.medium"
    name = "backend-server-2"
    subnet_id = module.network-1.private_subnet_ids[0]
}

module "backend-server-2" {
    source = "./modules/ec2"

    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.medium"
    name = "backend-server-2"
    subnet_id = module.network-1.private_subnet_ids[1]
}



