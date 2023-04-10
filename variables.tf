# Variables
variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  default = "10.0.1.0/24"
}

variable "public_subnet_availability_zone" {
  default = "us-east-1a"
}

variable "app_instance_type" {
  default = "t2.micro"
}

variable "rds_instance_class" {
  default = "db.t2.micro"
}

variable "rds_allocated_storage" {
  default = "20"
}

variable "rds_engine" {
  default = "mysql"
}

variable "rds_engine_version" {
  default = "5.7.30"
}

variable "rds_username" {
  default = "admin"
}

variable "rds_password" {
  default = "password"
}

variable "rds_database_name" {
  default = "mydb"
}

variable "nodejs_app_name" {
  default = "my-nodejs-app"
}
