module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 2.5"

    project_id   = var.project
    network_name = "guarav-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "gaurav-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}
#This is a test
