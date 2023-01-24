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
resource "aws_key_pair" "key" {
  key_name   = "sample2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDT1CTmexrl5wbeqAN70zNZrNkThBYQE2R0kl9eJxry9D4vh2ffMbjTPeLRKq15vhlh3f2Q/NCFrdQgmT3/NC9AbKbiMuyKCxLTdVgTiRJH5Y/Zrg5DB10Znie09qN5pn3mNju9zHXhWJflCmjL8lJIeHQj+SYBkjwfsmTrYI2daWAw4DHKn7aUtp/xL3bsOcBsSUae7oCo7JNdQ2ij9S5d9wf0cAjL9fS2685UOOLkEAfxlGJI8P0w5vaqeCei99WPd46q0S1NMehHQHptpYd2Rv4NUTWe4rqk3sD2cdVpRLaf0yXNIgBORItG1Z1PwY86lwF8fHoboSXqaIlyNVG3Msa7drBR3g2J0qmKdyUBLngOHRa1R9RDMTxWP31n9+UO0OIZosLiRVTPqWOBXAzJrNNFqsqHGarW3I42Fof8jdpjyZF87e1+V63wS+o5rNtepi9i4tVOWpfhuMhoco+upAU6O4N04xD21xtq9XutjTwco+uup8OTeTb94BYiqis= madhav@APSS-LAP-33"

}
