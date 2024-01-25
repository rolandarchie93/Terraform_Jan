#Launch Template is needed to create the ASG
resource "aws_launch_template" "apache_template" {
  name                   = var.name
  image_id               = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = filebase64("install_apache.sh")
  tags = {
    Name = var.name 
  }
}


# Here we are creating an ASG with the specified configuration
resource "aws_autoscaling_group" "roland93_apache_asg" {
  name               = var.name
  vpc_zone_identifier = var.availability_zones
  min_size           = 2
  max_size           = 5
  desired_capacity   = 2
  # Specify which version 
  launch_template {
    id = aws_launch_template.apache_template.id
    version = aws_launch_template.apache_template.latest_version
  }
}
