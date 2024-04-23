# Define the EC2 instances
resource "aws_instance" "httpd" {
  ami = "ami-0187337106779cdf8"
  instance_type = "t2.micro"
  subnet_id = "subnet-0594e3037f43c9d87"
  vpc_security_group_ids = ["sg-07b890b2894917d1e"]
 tags = {
    Name = "httpd"
  }
  key_name = "nss-php"
}

