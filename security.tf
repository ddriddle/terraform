# Our default security group to access
# the instances over SSH and HTTP
resource "aws_security_group" "default" {
  name = "terraform_example_sg"
  description = "Used in the terraform"

  # SSH access from anywhere
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from anywhere
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "ddriddle_macbook" {
  key_name   = "ddriddle (Mac OSX)"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCUGQWKty2Zonph614rfGRcRgEVXmjX7/TlXLiCz4BHCth0JAYx5zX4pVuRxl1IYqwFz8VV0jdUnPxdW+a+m16uHf+VhzvTsDqRRXf8DPPIPI8el50XQWWw+VOzComAZcv4lImfdo3/r+kVn3YOm3FwzWacxTRnB9KrVPt689wcrjiEXNsP+NBbo8lfEUTqvkfB+ekl92W/GYDjgOWrxDD5fu86jJd51HFdEZdXx2b1sPDvkZ+0+KAd2DU406hPNBni8tahDMOdTw2xhlKPteo0rWP7Nn8wLGiNR5Lvde2fyPZVo/NotPTlbDttZaassawS+3SFcuGwT8mdHYplJ/5ynG0H7Rt7HgVF9Vx1KM82u9yDATF8GXj0SQfs0+j0QvUJv7hwI7zWBsoxfApwphk41YaxDD7hW2Ow2eOD5Ft6tlyGjoilzE4pP2iNTeTrqrn8KexAMOyJ6/pY5an4NC96LN72Z189MChZ9d3FP8XiiZuIT8/dlle4wL2kBIpwies4VHAEY8T9TysinK1g7kvQIezcAIQE0mgZl/vQnQC0NuMEjvsjNGNjAtWUdYZNrga2zSBlu2d2BrMjj2j4wr9drNrqvMCiX5XrRZjgStzUEhnk3XiaZat+9giRCx5qxHayrscPYBjtelOm8Vz3Exni6EST4SKRCfYN7X1WodF9zw== ddriddle@macbook"
}
