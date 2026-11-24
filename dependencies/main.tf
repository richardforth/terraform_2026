resource "local_file" "pet" {
  filename        = var.filename
  content         =  "I love ${random_pet.my-pet.id}!"
  file_permission = var.file_permissions
}

# look in local_file.pet to see the dependency link,
# harnessing random_pet.my-pet.id in the content variable
# of the resource local_file.pet. This means that 
# random_pet.my_pet has to be created FIRST instead of LAST
resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}