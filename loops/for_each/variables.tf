variable "filename" {
  type = list(string) # the default
  default = [
    "C:\\Users\\richa\\Terraform\\loops\\for_each\\pets.txt",
    "C:\\Users\\richa\\Terraform\\loops\\for_each\\cats.txt",
    "C:\\Users\\richa\\Terraform\\loops\\for_each\\dogs.txt",
    "C:\\Users\\richa\\Terraform\\loops\\for_each\\cows.txt",
    "C:\\Users\\richa\\Terraform\\loops\\for_each\\ducks.txt"
  ]  
}

variable "content" {
  default = "This is just some data."
}

variable "file_permissions" {
  default = "0644"
}
