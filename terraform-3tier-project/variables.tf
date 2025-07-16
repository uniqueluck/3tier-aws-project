variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "mykey" # Replace with your EC2 Key Pair
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "Password123!" # Change to a strong password
}
