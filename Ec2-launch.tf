resource "aws_instance" "web" {
  ami           = "${data.aws_ami.AMI.id}"
  instance_type = "t2.micro"
  availability_zone = "${var.AZ}"
  key_name = "abc"

  tags = {
        Name = "HelloWorld"
  }
  }