variable "rg_name" {
  type = list(string)
#   default =["15","16","21","18","88"]
}

resource "azurerm_resource_group" "maxcell" {
    count = length(var.rg_name)
    name = var.rg_name[8]
    location = "westeurope"
  
}