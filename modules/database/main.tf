resource "azurerm_mssql_server" "mssql-e-commerce-db-server" {
  name                         = var.mssqldbserevername
  resource_group_name          = var.rgname
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"
  public_network_access_enabled = false
  minimum_tls_version = "1.2"
}

resource "azurerm_mssql_database" "mssql-e-commerce-db" {
  name         = var.mssqldbname
  server_id    = azurerm_mssql_server.mssql-e-commerce-db-server.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
}

resource "azurerm_mssql_database_extended_auditing_policy" "example" {
  database_id                             = azurerm_mssql_database.mssql-e-commerce-db.id
  storage_endpoint                        = var.sa_primary_blob_endpoint
  storage_account_access_key              = var.sa_primary_access_key
  storage_account_access_key_is_secondary = false
  retention_in_days                       = 90
}