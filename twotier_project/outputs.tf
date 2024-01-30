output "ippublic1ip" {
  value = aws_instance.web_tier_1.public_ip
}

output "ippublicip2ip" {
  value = aws_instance.web_tier_2.public_ip
}