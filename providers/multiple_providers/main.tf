resource "local_file" "pet" {
  filename     = "C:\\Users\\richa\\Terraform\\multiple_providers\\pets.txt"
  content  = "I love pets!"
  file_permission = "0700"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}