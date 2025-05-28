locals {
  secretos_numerados = {
    for idx, secret in var.secretos :
    format("%02d_%s", idx + 1, secret.nombre) => secret
  }
}
