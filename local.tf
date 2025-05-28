locals {
  secretos_map = {
    for secret in var.secretos :
    secret.nombre => {
      descripcion = secret.descripcion
    }
  }
}