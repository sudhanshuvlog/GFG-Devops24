output "x_value" {
    value = 5
  
}

output "InstanceType" {
  value = var.InstanceType
}

output "ec2ipaddress" {
  value = aws_instance.ec2[0].public_ip
}

# output "ec2ipaddress1" {
#   value = aws_instance.ec2[1].public_ip
# }

output "AmiID" {
  value = data.aws_ami.amiID.id
}