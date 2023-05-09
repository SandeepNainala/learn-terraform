variable "sample" {
  default = "abc1234"
}

output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc","1234"]
}

output "sample1" {
  value = element(var.sample1,0)
}