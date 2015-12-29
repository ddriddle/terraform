provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}

resource "aws_instance" "example" {
    ami = "${lookup(var.centos6, var.region)}"
    instance_type = "t2.micro"

    vpc_security_group_ids = ["${aws_security_group.default.id}"]
    key_name = "${aws_key_pair.ddriddle_macbook.id}"
}

output "ip" {
    value = "${aws_instance.example.public_ip}"
}
