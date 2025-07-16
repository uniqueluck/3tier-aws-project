resource "aws_security_group" "web_sg" {
  vpc_id = var.vpc_id
  name   = "web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami                    = "ami-0a1235697f4afa8a4" # Amazon Linux 2 (change if needed)
  instance_type          = var.instance_type
  subnet_id              = var.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Registration Form</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = { Name = "Web-Server" }
}

resource "aws_instance" "app" {
  ami                    = "ami-0a1235697f4afa8a4" # Amazon Linux 2
  instance_type          = var.instance_type
  subnet_id              = var.private_subnets[0]
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name               = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd php php-mysqlnd
              systemctl start httpd
              systemctl enable httpd
              echo "<?php phpinfo(); ?>" > /var/www/html/index.php
              EOF

  tags = { Name = "App-Server" }
}


