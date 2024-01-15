# the following is used to configure the providers authentication token
# you do not need to provide the token on the command line to provide changes
# through backend terraform automatically will execute where your token is secured

variable "provider_token" {
    type = string
    sensitive = true
}

provider "fakewebservices" {
    token = var.provider_token 
}