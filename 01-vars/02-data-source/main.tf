
data "aws_security_group" "selected" {
  name = "allow_all"
}

output "security_group_id" {
  value = data.aws_security_group.selected.id
}