terraform { 
  cloud { 
    
    organization = "poridh_iac" 

    workspaces { 
      name = "ghost-dev" 
    } 
  } 
}

module "poiridhi_dev" {
  source = "terr_c_5/src/blueprint"
  vpc_name = "poiridhi_dev_vpc"
  vpc_cidr = "10.11.0.0/16"
  public_subnets = ["10.11.1.0/24"]
  availability_zones = ["us-east-1"]
  custom_tags = {
    env = "poridhi_dev"
    team = "app"
    manage_by_tf = true
    workspaces = "ghost-dev"
  }
} 