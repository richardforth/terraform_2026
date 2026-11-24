resource "local_file" "pet" {
  filename     = "C:\\Users\\richa\\Terraform\\terraform_local_file\\pets.txt"
  content  = "I love pets!"
  file_permission = "0700"
}