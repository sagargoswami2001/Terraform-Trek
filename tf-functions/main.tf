terraform {}

locals {
  value = "Sagar Goswami!"
}

variable "string_list" {
  type = list(string)
  default = ["serv1", "serv2", "serv3", "serv1"]
}

output "output" {
    #value = lower(local.value)
    # value = startswith(local.value, "Hello")
    # value = split(" ", local.value)
    # value = max(2, 4, 6, 8, 10)
    # value = min(1, 3, 5, 7)
    # value = abs(-27.06)
    # value = length(var.string_list)
    # value = join(":", var.string_list)
    # value = contains(var.string_list, "serv1")
    value = toset(var.string_list) #remove duplicates
}
