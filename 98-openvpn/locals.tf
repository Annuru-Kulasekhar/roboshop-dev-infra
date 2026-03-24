locals {
    common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
    }
    public_subnet_id = split(",",data.aws_ssm_parameter.public_subnet_id.value)[0]
    openvpn_sg_id = data.aws_ssm_parameter.openvpn_sg_id.value
}