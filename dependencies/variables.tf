variable filename {
    description = "The file path to be created"
    default = "C:\\Users\\richa\\Terraform\\dependencies\\pets.txt"
    type = string
}

variable file_permissions {
    description = "the mode of the file to be created"
    default = "0770"
    type = string
}

variable prefix {
    description = "The prefix for the random pet name"
    default = "Mrs"
    type = string 
}

variable separator {
    description = "the separator for the name. default is dot (Mrs.badger)"
    default = "."
    type = string
}

variable length {
    description = "the length of the pet name, default is 1 word"
    default = "1"
    type = string
}