module "vpn" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  ami                         = data.aws_ami.sample_data_source.image_id
  name                        = "${local.ec2-name}-vpn"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [data.aws_ssm_parameter.vpn_sg_id.value]
  subnet_id                   = data.aws_subnet.selected.id
  associate_public_ip_address = "true"
  user_data                   = file("openvpn.sh")
  tags = merge(
    var.common_tags,
    {
      Component = "vpn"
    },
    {
      Name = "${local.ec2-name}-vpn"
    }
  )
}
