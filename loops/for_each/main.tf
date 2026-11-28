resource local_file my_file {
  filename = each.value
  content = var.content
  file_permission = var.file_permissions
  for_each = toset(var.filename) # here we convert the list of strings to a set of strings, note that sets cannot contain duplicate values
}

# One drawback of using count, like this, is that the resources are created
# as a list. And as such are referenced by their index, so if the indexes change,
# for example if we delete only the first item from the list in the variable
# called filename, all other elements shift up and thus will have changed their 
# index position, so terraform will try to delete all the resources and recreate
# them using their correct index positions. This is not ideal.


# To get over this obstacle, we can use for_each, which instead makes use of maps or sets, and its output
# can be seen as a set, and each resource is referred to be its key, which is the filename, as part of a map
# maps are lists of key-value pairs

# To visualise this it is best to see this using terraform show. 
