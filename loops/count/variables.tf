variable "filename" {
  type = list(string) # the default
  default = [
    "C:\\Users\\richa\\Terraform\\loops\\count\\pets.txt",
    "C:\\Users\\richa\\Terraform\\loops\\count\\cats.txt",
    "C:\\Users\\richa\\Terraform\\loops\\count\\dogs.txt",
    "C:\\Users\\richa\\Terraform\\loops\\count\\cows.txt",
    "C:\\Users\\richa\\Terraform\\loops\\count\\ducks.txt"
  ]  
}

variable "content" {
  default = "This is just some data."
}

variable "file_permissions" {
  default = "0644"
}
