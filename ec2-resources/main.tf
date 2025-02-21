resource "aws_instance" "webserver-ec2" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.micro"
    vpc_security_group_ids = [ var.security_group_id ]
    subnet_id = var.public_subnet_id
    tags = {
      Name = "webserver-ec2"
    }
user_data = <<-EOF
#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
EOF
}
  
