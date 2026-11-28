resource local_file my_file {
  filename = var.filename[count.index]
  content = var.content
  file_permission = var.file_permissions
  count = length(var.filename)
}

# One drawback of using count, like this, is that the resources are created
# as a list. And as such are referenced by their index, so if the indexes change,
# for example if we delete only the first item from the list in the variable
# called filename, all other elements shift up and thus will have changed their 
# index position, so terraform will try to delete all the resources and recreate
# them using their correct index positions. This is not ideal.

# To visualise this it is best to see this using terraform show.
