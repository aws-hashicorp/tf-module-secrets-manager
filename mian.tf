resource "aws_secretsmanager_secret" "secrets" {
  for_each = {
    for secret in var.secretos : secret.nombre => secret
  }

  name                    = each.value.nombre
  description             = each.value.descripcion
  recovery_window_in_days = 0

  kms_key_id = "alias/aws/secretsmanager"

  tags_all = merge(
    var.tags,
    {
      "Name" = each.value.nombre
    }
  )
}
