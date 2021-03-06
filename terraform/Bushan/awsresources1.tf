resource "aws_instance" "web" {
  ami           = "ami-5b673c34"
  instance_type = "t2.micro"
  key_name = "rajesh-mumbai"
 tags = {
    Name = "BushanTF"
  }

  provisioner "file" {
  source      = "index.html"
  destination = "/tmp/index.html"

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = "rajesh-mumbai.pem"
    host = "${self.public_ip}"
  }
}
}