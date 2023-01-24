provider "aws"{
    region="us-east-1"

}

resource "aws_instance" "server" {
  ami           = "ami-0c544bda9765444c2"
  instance_type = "t2.micro"
  subnet_id="subnet-08408a6d172ed0bd5"
  security_groups=["sg-0bc77cca92a247311"]
  key_name=aws_key_pair.key.id


  tags = {
    Name = "terraform-server"
  }
}

