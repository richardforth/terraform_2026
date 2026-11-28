# Four resources, three of which have lifecycle rules applied
# Example 1; with no lifecycle rules applied, the default behaviour
# Is destroy before create
resource "random_pet" "first-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
# If you change any attributes in the resource above, it will be deleted
# first. and then a new resource will be created


# Example 2: Reversing the order, using create_before_destroy
resource "random_pet" "second-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
  lifecycle {
    create_before_destroy = true
  }
}
# If you change any attributes in the resource above, it will be created
# first. and then the old resource will be destroyed

# Example 3, ignore_changes tp certain attributes (or all)
# If using all. replace the list with the all keyword only
resource local_file my-file {
    filename = "C:\\Users\\richa\\Terraform\\lifecycle_rules\\my_file.txt"
    content = "This is my file"
    file_permission = "0755"
    lifecycle {
        ignore_changes = [
            file_permission, content 
        ]
    }
}
# If you change the file-permission, or contents in the resource above, it will be ignored
# and Terraform will not try to recreate it

# Example 3: A file resource that we do not want to delete
# in the real world, this might be an EC2 instance, or a database that
# we do not want to be deleted once it is provisioned.
resource "local_file" "important-file" {
    filename = "C:\\Users\\richa\\Terraform\\lifecycle_rules\\important_file.txt"
    content = "This file should never be deleted"
    file_permission = "0700"
    lifecycle {
       prevent_destroy = true
    }
}


