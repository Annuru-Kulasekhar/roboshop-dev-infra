locals {
    ami_id = data.aws_ami.roboshop.id
    common_tags={
         Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
    database_subnet_id = split(",",data.aws_ssm_parameter.database_subnet_id.value)[0]
    mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id.value
    redis_sg_id = data.aws_ssm_parameter.redis_sg_id.value
}