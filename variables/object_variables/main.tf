resource local_file bella {
  filename = var.filename
  content = <<-EOF
    Name          : ${var.bella.name}
    Age           : ${var.bella.age}
    Colour        : ${var.bella.color}
    Food          : ${var.bella.food[0]}, ${var.bella.food[1]}, ${var.bella.food[2]}
    Favourite Pet : ${var.bella.favorite_pet}
  EOF
}