resource "azurerm_storage_share_directory" "storage_share_directorys" {
  for_each = var.storage_share_directorys

  name              = each.value.name
  metadata          = each.value.metadata
  storage_share_id  = each.value.storage_share_id
  storage_share_url = each.value.storage_share_url
}

