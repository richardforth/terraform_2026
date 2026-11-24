resource local_file my-pet {
  filename = "C:\\Users\\richa\\Terraform\\map_variables\\pets.txt"
  content = var.file-content["statement2"]
}