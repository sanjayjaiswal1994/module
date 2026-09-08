#resource group in simple way
# resource "azurerm_resource_group" "ram" {
#   location = "west us"
#   name     = "ram_rg"
# }

#storage account in simple way
# resource "azurerm_storage_account" "Shyam" {
#   resource_group_name  = "ram_rg"
#   name = "aksstorage"
#   location             = "west us"
#   account_replication_type = "LRS"
#   account_tier          = "Standard"

# }
#storage account using implicite
# resource "azurerm_resource_group" "Shyam1" {
#     name = "ram1_rg"
#     location = "westus"
# }
# resource "azurerm_storage_account" "xyz" {
#     resource_group_name = "ram1_rg"
#     name = "gunjustorage321"
#     location = "westus"
#     account_tier = "Standard"
#     account_replication_type = "LRS" 
# }
#stoarge account using meta argument (explicit)
resource "azurerm_resource_group" "abc" {
    name = "abc_rg"
 location = "westus"  
}
resource "azurerm_storage_account" "abc1" {
    depends_on = [ azurerm_resource_group.abc ]
resource_group_name =   "abc_rg"
name = "abc121storage"
location = "eastus"
account_tier = "Standard"
account_replication_type = "LRS"
}