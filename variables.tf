variable "access_key" {}
variable "secret_key" {}

variable "region" {
    default = "us-west-2"
}

variable "amazon_linux_ami" {
    default = {
        us-east-1 = "ami-60b6c60a"
        us-west-2 = "ami-f0091d91"
    }
}

variable "centos7" {
    default = {
        us-west-2 = "ami-d440a6e7"
    }
}

variable "centos6" {
    default = {
        us-west-2 = "ami-1255b321"
    }
}

variable "rhel7_ami" {
    default = {
        us-east-1 = "ami-2051294a"
        us-west-2 = "ami-775e4f16"
    }
}
