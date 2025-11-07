output "instance_list" {
  value = {
    for idx, instance in aws_instance.my_instances :
    "Instance_${idx + 1}" => instance.public_ip
  }
}

