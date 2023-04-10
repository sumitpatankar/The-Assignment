resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "my-ec2-key"
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/my-ec2-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nodejs npm",
      "sudo apt install -y mysql-client",
      "git clone https://github.com/sumitpatankar/sample-nodejs.git",
      "cd sample-nodejs",
      "npm install",
      "node app.js"
    ]
  }
}
