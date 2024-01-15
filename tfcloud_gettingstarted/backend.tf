# the below config terraform to use the remote beackend with terraform 

terraform {
    backend "remote" {
        organization = "{{ORGANIZATION_NAME}}"
        
        workspaces {
            name = "{{WORKSPACE_NAME}}"
        }
    }
    
    required_version = ">= 0.13.0"
}