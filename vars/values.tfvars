vpc_name             = "vpc-jenkins"
vpc_cidr             = "10.0.0.0/16"
public_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets_cidr = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
region               = "us-east-1"
ssh_key_name         = "ssh_key"
private_key_path     = "/Users/toksy/.ssh/id_rsa"
instance_type        = "t2.small"
public_key           = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCjPYVnLZlwMpZw/q9fQpdeR4+JTqbd5E1zG+lWIkQqm44dT+hmsOCYKpEZcvzN7cucFkzkQh5ghd4qWveUWnfSM1zubHTN5xCup3rpIL5qopKlps/ggzMgVKIA1UVDaEMZm9ZVo7PH46T27LMlxoxfZTjqrpRm9UDwj1DjQr2kDzCWnGsolSG1BmCPXdYaik+UTGrqilwPui8hBBP9J//USlE6T6MfrUxr846PMj1imHdJ7bUhGPV/Z+/Vg1IkE+z0iw/7vfMFLdztNVqJLgx+RL3fLvtUb1Naws6uPdQeBeQf7htRhBjSW/qFa1ZcaXwGR1VMzHbpFAE6nuCQKkpgRLGV060qYJfdeNqZ4cdyXob+6W/froFaPCl9u6uv7gsQ9jui1B3Iv4jBUbYIZdsg+wWrf2mLwjZSa33f6W0JiOSuLhuZVPES+Fm27j7vE+dv92p0IQiljXW9myqV7k4SzjekaP2Z8yawN04jXHHVA5I54mYthTi1AJ8AduZ3OmFlmsye2YwbscGaQ3MJJOOKv0Uyl/nwavjugZbF0EAys7HjrOGPE8DX7mNVlwyv5VLfQKhy8gblD/fovi39VAGi1uXRSIJE5zUw8sZjV6koWPnmYXo1xdUOFPXKWHMSVfvHbiCuTL4fNxjQTZaMjBVmRud8VsWynekwwQgtzeiQQQ== igeadetokunbo@gmail.com"