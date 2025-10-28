resource "aws_instance" "public" {
    count = 1
    ami = var.ami
    instance_type = var.instance_type

    tags = {
        Name = "MyTestInstance"
    }
}