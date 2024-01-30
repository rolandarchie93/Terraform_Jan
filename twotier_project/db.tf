#DB Instance
resource "aws_db_instance" "db" {
  allocated_storage   = 10
  db_name             = "mydb"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t3.small"
  username            = "dbadmin"
  password            = "passthebase"
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.sg_database.id]
  db_subnet_group_name   = aws_db_subnet_group.subnet_group_db.name

  tags = {
    name = "terraform db"
  }
}


#Subnet Group to place db in our VPC
resource "aws_db_subnet_group" "subnet_group_db" {
  name       = "db-subnet"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]

  tags = {
    name = "Subnet Group DB"
  }
}