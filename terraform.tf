resource "local_file" "pavel" {
  content  = "Hello, Pavel!"
  for_each = { for i,num in var.numbers : i => num}
  filename = "pavel-${each.key}-${each.value}.txt"
}


