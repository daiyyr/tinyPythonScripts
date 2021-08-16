provider "aws" {
  region = "ap-southeast-2"
}

# resource "aws_instance" "teemo-dev" {
#   ami = "ami-0567f647e75c7bc05"
#   instance_type = "t2.micro"
# }


# terraform import aws_instance.teemo-dev i-05d0c0973b91deda9
# terraform show -no-color > teemo_dev.tf
