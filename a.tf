variable a {
  default = "4s"

}
variable list{
    type = list(string)
    default = ["a.txt","b.txt","c.txt"]
}

variable "numbers" {
  type=map(string)
  default = {
    a = "1"
    b = "2"
    c = "3"
  }
}