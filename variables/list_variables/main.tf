resource "random_pet" "this-pet" {
  prefix    = var.prefix[0]
  separator = var.separator
  length = var.length
}

resource "random_pet" "that-pet" {
  prefix    = var.prefix[1]
  separator = var.separator
  length = var.length
}

resource "random_pet" "other-pet" {
  prefix    = var.prefix[2]
  separator = var.separator
  length = var.length
}

resource "random_pet" "fourth-pet" {
  prefix    = var.prefix[3]
  separator = var.separator
  length = var.length
}

resource "random_pet" "fifth-pet" {
  prefix    = var.prefix[4]
  separator = var.separator
  length = var.length
}

resource "random_pet" "sixth-pet" {
  prefix    = var.prefix[5]
  separator = var.separator
  length = var.length
}

resource "random_pet" "seventh-pet" {
  prefix    = var.prefix[6]
  separator = var.separator
  length = var.length
}