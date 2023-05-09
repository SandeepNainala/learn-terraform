variable "sample" {
  default = "abc1234"
}

output "sample" {
  value = upper(var.sample)
}