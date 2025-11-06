
provider "aws" {
  region = "us-east-1"   
}



resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key"          
  public_key = file("~/.ssh/id_rsa.pub") 
}


resource "aws_instance" "my_instances" {
 depends_on = [aws_key_pair.terraform_key]
   ami           = "ami-0ecb62995f68bb549"  
  instance_type = "t3.micro"               
  key_name      = aws_key_pair.terraform_key.key_name  
  count         = 10                       

  tags = {
    Name = "Terraform-Instance-${count.index + 1}"     # Instance name (1 to 10)
  }
}


output "instance_list" {
  value = {
    for idx, instance in aws_instance.my_instances :
    "Instance_${idx + 1}" => instance.public_ip
  }
}

