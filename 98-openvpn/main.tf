resource "aws_instance" "openvpn" {
    ami = data.aws_ami.openvpn.id 
    instance_type = var.instance_type
    subnet_id = local.public_subnet_id
    vpc_security_group_ids = [local.openvpn_sg_id]
    user_data = file("vpn.sh")

    tags = merge (
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-openvpn"
        }
    )

}