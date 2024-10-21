resource "azurerm_mssql_server" "mssql-e-commerce-db-server" {
  name                         = var.mssqldbserevername
  resource_group_name          = var.rgname
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "mssql-e-commerce-db" {
  name         = var.mssqldbname
  server_id    = azurerm_mssql_server.mssql-e-commerce-db-server.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}

# New workflow test
