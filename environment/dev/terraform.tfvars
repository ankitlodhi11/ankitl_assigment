rg_config = {
  "dev-rg" = {
    resource_group_name     = "hero-rg"
    resource_group_location = "East Asia"
  }
  dev2-rg = {
    resource_group_name     = "zero-rg"
    resource_group_location = "East Asia"
  }
}

vnet_config = {
  "dev-vnet" = {
    virtual_network_name     = "hero-vnet"
    address_space            = ["10.0.0.0/16"]
    resource_group_name      = "hero-rg"
    virtual_network_location = "East Asia"
  }
}

subnet_config = {
  "dev-subnet" = {
    subnet_name          = "dev-subnet"
    resource_group_name  = "hero-rg"
    virtual_network_name = "hero-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

ip_config = {
  "pip1" = {
    public_ip_name          = "pip1"
    resource_group_name     = "hero-rg"
    resource_group_location = "East Asia"
  }
}

nic_config = {
  "nic1" = {
    nic_name                   = "nic1"
    resource_group_name        = "hero-rg"
    network_interface_location = "East Asia"
    subnet_name                = "dev-subnet"
    virtual_network_name       = "hero-vnet"
    public_ip_name             = "pip1"
  }
}

nsg_config = {
  "nsg1" = {
    nsg_name            = "nsg1"
    resource_group_name = "hero-rg"
    location            = "East Asia"
  }
}

nsg_nic_config = {
  "assoc1" = {
    nic_name            = "nic1"
    nsg_name            = "nsg1"
    resource_group_name = "hero-rg"
  }
}

vm_config = {
  "vm1" = {
    vm_name             = "vm1"
    resource_group_name = "hero-rg"
    location            = "East Asia"
    nic_name            = "nic1"
    vm_size             = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd1234!"
    publisher           = "Canonical"
    offer               = "UbuntuServer"
    sku                 = "18.04-LTS"
  }
}