
data "aws_vpc" "default" {
  default = true
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0.13"
  instance_class       = "db.t2.micro"
  name                 = "notejam"
  username             = "notejam"
  password             = "notejam1234"
  publicly_accessible      = true
  backup_retention_period = 5
  backup_window = "07:00-09:00"
  enabled_cloudwatch_logs_exports = ["general"]
  skip_final_snapshot = true
  vpc_security_group_ids = ["${aws_security_group.mysql-sg.id}"]
}

resource "aws_security_group" "mysql-sg" {
  name   = "mysql-security-group"
  vpc_id = "${data.aws_vpc.default.id}"

  ingress {
    protocol    = "tcp"
    from_port   = 3306
    to_port     = 3306
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}