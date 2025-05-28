locals {
  secretos_map = {
    for secret in var.secretos :
    "${secret.id}_${secret.nombre}" => {
      nombre      = secret.nombre
      descripcion = secret.descripcion
    }
  }
}
