variable "keyName" {
    type= string
    default = "gfg27newkey"
  
}

variable "x" {
    type = string
    default = "Hello"
  
}

variable "InstanceType" {
    type = string
    default = "t2.micro"
  
}

variable "Name" {
    type= string
    default = "EC2-OS"
  
}

# variable "amiId" {
#     default = "ami-08718895af4dfa033"
  
# }

variable "allowedPorts"{
    type = list
    default = [ 80, 9090, 8080, 3000, 90, 22, 100, 81, 82, 83, 443, 9100, 9323, 9104 ]
}

variable "vpc_name" {
  default = "gfg24vpc"
}

variable "subenet1Name" {
  default = "gfg24subnet1"
}

variable "subenet1AZ" {
  default = "ap-south-1a"
}