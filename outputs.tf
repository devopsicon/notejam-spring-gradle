output "alb_hostname" {
  value = "${aws_alb.main.dns_name}"
}

output "rds_ip" {
  value = "${aws_db_instance.mysql.address}"
}