output "instance-dns" {
  value = aws_instance.jenkins_instance.public_dns
}