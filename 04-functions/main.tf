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

variable "sample2" {
  default = {
      abc = 100
      123 = xyz
  }
}

output "sample2" {
  value = lookup(var.sample2,"a1","dummy")
}