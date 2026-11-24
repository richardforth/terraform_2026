variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favorite_pet = bool
  })

  default = {
    name = "bella"
    color = "brown"
    age = 7
    food = ["fish", "chicken", "turkey"]
    favorite_pet = true
 }
}

variable filename {
    default = "C:\\Users\\richa\\Terraform\\object_variables\\bella.txt"
}