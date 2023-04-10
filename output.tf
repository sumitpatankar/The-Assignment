output "api_endpoint" {
  value = aws_instance.my_ec2_instance.public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.my_db_instance.endpoint
}
