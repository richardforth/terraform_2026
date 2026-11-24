variable "prefix" {
    description = "A list of possible prefixes (string types) for a pet name"
    type = list(string)
    default = ["Mr", "Mrs", "Madam", "Sir", "Dame", "King", "Queen"]
}

variable "separator" {
    description = "The name separator, defaults to dot(.) example Mr.Fox"
    default = "."
    type = string
}

variable "length" {
    description = "The length of the pet name, ironically also a string"
    default = "1"
    type = string
}