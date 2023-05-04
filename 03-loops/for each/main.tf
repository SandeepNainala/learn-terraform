resource "null_resource" "fruits" {
  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
  }

}

resource "null_resource" "fruits1" {
  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value["count"]}"
  }

}

variable "fruits1" {
  default = {
    apple = {
      name = "apple"
      count = 10
    }
    orange = {
      name = "orange"
      count = 200
    }
    banana = {
      name = "banana"
      count = 300
    }
  }
}

variable "fruits" {
  default = {
    apple = 10
    banana = 200
    orange =  300

  }
  }