tushar_RGvarsM = {
  tushar_RG1 = {
    name     = "tushar_RG1"
    location = "France Central"
  }
  # tushar_aksRG = {
  #   name     = "tushar_aksRG"
  #   location = "France Central"
  # }
}

tushar_stgsvarsM = {
  tusharstgs1 = {
    name                     = "tusharstgs1"
    location                 = "France Central"
    resource_group_name      = "tushar_RG1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

tushar_containersvarsM = {
  tusharcontainer01 = {
    name                  = "tusharcontainer01"
    storage_account_name  = "tusharstgs1"
    storage_account_id    = ""
    container_access_type = "private"
  }
}

tushar_vnetvarsM = {
  tushar_vnet1 = {
    name                = "tushar_vnet1"
    resource_group_name = "tushar_RG1"
    location            = "France Central"
    address_space       = ["10.1.0.0/16"]
  }
}

tushar_subnetsvarsM = {
  tushar_subnet1 = {
    name                 = "tushar_subnet1"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.1.0/24"]
  }
  tushar_subnet2 = {
    name                 = "tushar_subnet2"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.2.0/24"]
  }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tushar_linuxvmsssubnet1 = {
    name                 = "tushar_linuxvmsssubnet1"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tushar_winvmsssubnet1 = {
    name                 = "tushar_winvmsssubnet1"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.5.0/24"]
  }
  Application_Gateway_Subnet = {
    name                 = "Application_Gateway_Subnet"
    resource_group_name  = "tushar_RG1"
    virtual_network_name = "tushar_vnet1"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tushar_KeyvaultsVarsM = {
  tusharkeyvault01 = {
    name                = "tusharkeyvault01"
    location            = "France Central"
    resource_group_name = "tushar_RG1"
    sku_name            = "standard"
    tenant_id           = ""
    object_id           = ""
  }
}

tushar_randompasswordsvarsM = {
  tusharvm1 = {
    name          = "tusharvm1"
    keyvault_name = "tusharkeyvault01"
    key_vault_id  = ""
    value         = ""
  }
  tusharvm2 = {
    name          = "tusharvm2"
    keyvault_name = "tusharkeyvault01"
    key_vault_id  = ""
    value         = ""
  }
  tusharwinvm1 = {
    name          = "tusharwinvm1"
    keyvault_name = "tusharkeyvault01"
    key_vault_id  = ""
    value         = ""
  }
  tusharlinuxvmss1 = {
    name          = "tusharlinuxvmss1"
    keyvault_name = "tusharkeyvault01"
    key_vault_id  = ""
    value         = ""
  }
  twinvmss1 = {
    name          = "twinvmss1"
    keyvault_name = "tusharkeyvault01"
    key_vault_id  = ""
    value         = ""
  }
}

tushar_publicipsvarsM = {
  # tushar_publicip1 = {
  #   name                = "tushar_publicip1"
  #   location            = "France Central"
  #   resource_group_name = "tushar_RG1"
  #   allocation_method   = "Static"
  # }
  # tushar_publicip2 = {
  #   name                = "tushar_publicip2"
  #   location            = "France Central"
  #   resource_group_name = "tushar_RG1"
  #   allocation_method   = "Static"
  # }
  # tushar_publicip3 = {
  #   name                = "tushar_publicip3"
  #   location            = "France Central"
  #   resource_group_name = "tushar_RG1"
  #   allocation_method   = "Static"
  # }
  tushar_bastionip1 = {
    name                = "tushar_bastionip1"
    location            = "France Central"
    resource_group_name = "tushar_RG1"
    allocation_method   = "Static"
  }
  tushar_lbpublicip1 = {
    name                = "tushar_lbpublicip1"
    location            = "France Central"
    resource_group_name = "tushar_RG1"
    allocation_method   = "Static"
  }
  tusharapplicationgatewayip1 = {
    name                = "tusharapplicationgatewayip1"
    resource_group_name = "tushar_RG1"
    location            = "France Central"
    allocation_method   = "Static"
  }
  tusharapplicationgatewayip2 = {
    name                = "tusharapplicationgatewayip2"
    resource_group_name = "tushar_RG1"
    location            = "France Central"
    allocation_method   = "Static"
  }

}

tusharnic_varsM = {
  tushar_nic1 = {
    name                  = "tushar_nic1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    ip_configuration_name = "tushar_ipconfig1"
    # public_ip_address_id          = ""
    subnet_id = ""
    # publicip_name                 = "tushar_publicip1"
    subnet_name                   = "tushar_subnet1"
    private_ip_address_allocation = "Dynamic"
    # nsg_name = "tusharnsgallowssh22"
  }
  tushar_nic2 = {
    name                  = "tushar_nic2"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    ip_configuration_name = "tushar_ipconfig2"
    # public_ip_address_id          = ""
    subnet_id = ""
    # publicip_name                 = "tushar_publicip2"
    subnet_name                   = "tushar_subnet2"
    private_ip_address_allocation = "Dynamic"
    # nsg_name = "tusharnsgallowssh22"
  }
  tushar_nic3 = {
    name                  = "tushar_nic3"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    ip_configuration_name = "tushar_ipconfig3"
    # public_ip_address_id          = ""
    subnet_id = ""
    # publicip_name                 = "tushar_publicip3"
    subnet_name                   = "tushar_subnet2"
    private_ip_address_allocation = "Dynamic"
    # nsg_name = "tusharnsgallowrdp3389"
  }
  tusharlinuxvmss_nic1 = {
    name                  = "tusharlinuxvmss_nic1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    ip_configuration_name = "tushar_ipconfig4"
    # public_ip_address_id          = ""
    subnet_id = ""
    # publicip_name                 = "tushar_publicip3"
    subnet_name                   = "tushar_linuxvmsssubnet1"
    private_ip_address_allocation = "Dynamic"
    # nsg_name = "tusharnsgallowrdp3389"
  }
  tusharwinvmss_nic1 = {
    name                  = "tusharwinvmss_nic1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    ip_configuration_name = "tushar_ipconfig5"
    # public_ip_address_id          = ""
    subnet_id = ""
    # publicip_name                 = "tushar_publicip3"
    subnet_name                   = "tushar_winvmsssubnet1"
    private_ip_address_allocation = "Dynamic"
    # nsg_name = "tusharnsgallowrdp3389"
  }
}

tushar_vmsvarsM = {
  tusharvm1 = {
    name                  = "tusharvm1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = ""
    network_interface_ids = []
    nic_name              = "tushar_nic1"
  }
  tusharvm2 = {
    name                  = "tusharvm2"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = ""
    network_interface_ids = []
    nic_name              = "tushar_nic2"
  }
}

tushar_windowsvmsvarM = {
  tusharwinvm1 = {
    name                  = "tusharwinvm1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    size                  = "Standard_F1"
    network_interface_ids = []
    nic_name              = "tushar_nic3"
  }
}

# tushar_AKS_varsM = {
#   tushar_aks1 = {
#     name                = "tushar_aks1"
#     location            = "France Central"
#     resource_group_name = "tushar_aksRG"
#     dns_prefix          = "tusharaks1"
#     node_count          = 1
#     vm_size             = "Standard_D2s_v3"
#   }
# }

# tushar_acrvarsM = {
#   tusharacr1 = {
#     name                = "tusharacr1"
#     location            = "France Central"
#     resource_group_name = "tushar_aksRG"
#     sku                 = "Standard"
#   }
# }

# tusharnsgvarsM = {
#   tusharnsgallowssh22 = {
#     name                         = "tusharnsgallowssh22"
#     location                     = "France Central"
#     resource_group_name          = "tushar_RG1"
#     rule_name                    = "allowsshvM"
#     priority                     = 101
#     direction                    = "Inbound"
#     access                       = "Allow"
#     protocol                     = "*"
#     source_port_ranges           = "0-65535"
#     destination_port_ranges      = "22"
#     source_address_prefixes      = "0.0.0.0/0"
#     destination_address_prefixes = "0.0.0.0/0"
#   }
#   tusharnsgallowrdp3389 = {
#     name                         = "tusharnsgallowrdp3389"
#     location                     = "France Central"
#     resource_group_name          = "tushar_RG1"
#     rule_name                    = "allowrdpvM"
#     priority                     = 102
#     direction                    = "Inbound"
#     access                       = "Allow"
#     protocol                     = "*"
#     source_port_ranges           = "0-65535"
#     destination_port_ranges      = "3389"
#     source_address_prefixes      = "0.0.0.0/0"
#     destination_address_prefixes = "0.0.0.0/0"
#   }
# }



tusharbastionvarsM = {
  tusharbastion1 = {
    name                 = "tusharbastion1"
    resource_group_name  = "tushar_RG1"
    location             = "France Central"
    ipconfigname_bastion = "ipconfig_bastion1"
    subnet_name          = "AzureBastionSubnet"
    publicip_name        = "tushar_bastionip1"
    subnet_id            = ""
    public_ip_address_id = ""
    virtual_network_name = "tushar_vnet1"
  }
}

tushar_linuxvmssvarsM = {
  tusharlinuxvmss1 = {
    name                    = "tusharlinuxvmss1"
    resource_group_name     = "tushar_RG1"
    location                = "France Central"
    sku                     = "Standard_F1"
    instances               = 2
    nic_name                = "tusharlinuxvmss_nic1"
    ipconfig_name_linuxvmss = "ipconfig_linuxvmss1"
    subnet_id               = ""
    subnet_name             = "tushar_linuxvmsssubnet1"
  }
}

tushar_winvmssvarsM = {
  twinvmss1 = {
    name                  = "twinvmss1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 2
    nic_name              = "tusharwinvmss_nic1"
    ipconfig_name_winvmss = "ipconfig_winvmss1"
    subnet_id             = ""
    subnet_name           = "tushar_winvmsssubnet1"
  }
}

tushar_lbsvarsM = {
  tushar_lb1 = {
    name                = "tushar_lb1"
    resource_group_name = "tushar_RG1"
    location            = "France Central"
    publicip_name       = "tushar_lbpublicip1"
    # vnet_name = "tushar_vnet1"
    # vm_name = "tusharvm1"
  }
}

tushar_lb_backendpoolvarsM = {
  tushar_ib1backendpool1 = {
    name    = "tushar_ib1backendpool1"
    lb_name = "tushar_lb1"
  }
}

tushar_lbbackendpooladdressvarsM = {
  tushar_ib1backendpooladd1 = {
    name             = "tushar_ib1backendpooladd1"
    backendpool_name = "tushar_ib1backendpool1"
    vm_name          = "tusharvm1"
    vnet_name        = "tushar_vnet1"
  }
  tushar_ib1backendpooladd2 = {
    name             = "tushar_ib1backendpooladd2"
    backendpool_name = "tushar_ib1backendpool1"
    vm_name          = "tusharvm2"
    vnet_name        = "tushar_vnet1"
  }
}

tusharlb_healthprobesvarsM = {
  tushar_http-probe_prod = {
    name                = "tushar_http-probe"
    port                = 80
    lb_name             = "tushar_lb1"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
  }
  tushar_tcp-probe = {
    name                = "tushar_tcp-probe"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tushar_lb1"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http"
    protocol                       = "Tcp"
    lb_name                        = "tushar_lb1"
    frontend_ip_configuration_name = "tushar_lb1-frontend_ip_config"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    backend_address_pool_ids       = []
    # probe_id                       = ""
    probe_name       = "tushar_tcp-probe"
    backendpool_name = "tushar_ib1backendpool1"
  }
  rule2 = {
    name                           = "tushar-rule-https"
    protocol                       = "Tcp"
    lb_name                        = "tushar_lb1"
    frontend_ip_configuration_name = "tushar_lb1-frontend_ip_config"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    # backend_address_pool_ids       = []
    # probe_id                       = ""
    probe_name       = "tushar_tcp-probe"
    backendpool_name = "tushar_ib1backendpool1"
  }
}


tushar_appgatewaysvarsM = {
  tusharappgateway1 = {
    name                           = "tusharappgateway1"
    resource_group_name            = "tushar_RG1"
    location                       = "France Central"
    sku_name                       = "Standard_v2"
    tier                           = "Standard_v2"
    capacity                       = 2
    gateway_ip_configuration_name  = "gateway_ip_config1"
    frontend_port_name             = "Frontend_port80"
    frontend_port                  = 80
    frontend_ip_configuration_name = "appgatewayfrontipconfig1"
    backend_address_pool_name      = "appgatewaybackend_address_pool1"
    backend_http_settings_name     = "backend_http_settings_80"
    backend_http_settings_port     = 80
    cookie_based_affinity          = "Disabled"
    backend_http_settings_protocol = "Http"
    http_listener_name             = "http_listener80"
    http_listener_protocol         = "Http"
    request_routing_rule_name      = "http-rule"
    rule_type                      = "Basic"
    priority                       = 100
    subnet_name                    = "Application_Gateway_Subnet"
    publicip_name                  = "tusharapplicationgatewayip"
  }
}


tushar_appgateways = {
  agw1 = {
    name                          = "tusharappgateway1"
    resource_group_name           = "tushar_RG1"
    location                      = "France Central"
    sku_name                      = "Standard_v2"
    tier                          = "Standard_v2"
    capacity                      = 2
    gateway_ip_configuration_name = "gateway_ip_config1"
    subnet_name                   = "Application_Gateway_Subnet"
    subnet_rg                     = "tushar_RG1"
    vnet_name                     = "tushar_vnet1"

    # Multiple frontend ports
    frontend_ports = [
      {
        name = "Frontend_port80"
        port = 80
      },
      {
        name = "Frontend_port443"
        port = 443
      }
    ]

    # Multiple frontend IP configs
    frontend_ip_configurations = [
      {
        name           = "appgatewayfrontipconfig1"
        public_ip_name = "tusharapplicationgatewayip1"
        public_ip_rg   = "tushar_RG1"
      }
    ]

    # Multiple backend pools with multiple NICs
    backend_address_pools = [
      {
        name      = "appgatewaybackend_address_pool1"
        nic_names = ["tushar_nic1", "tushar_nic2"]
        nic_rgs   = ["tushar_RG1", "tushar_RG1"]
      },
      {
        name      = "appgatewaybackend_address_pool2"
        nic_names = ["tushar_nic3", "tusharlinuxvmss_nic1", "tusharwinvmss_nic1"]
        nic_rgs   = ["tushar_RG1", "tushar_RG1", "tushar_RG1"]
      }
    ]

    # Multiple backend HTTP settings
    backend_http_settings = [
      {
        name                  = "backend_http_settings_80"
        port                  = 80
        cookie_based_affinity = "Disabled"
        protocol              = "Http"
      },
      {
        name                  = "backend_http_settings_443"
        port                  = 443
        cookie_based_affinity = "Disabled"
        protocol              = "Https"
      }
    ]

    # Multiple listeners
    http_listeners = [
      {
        name                           = "http_listener80"
        frontend_port_name             = "Frontend_port80"
        frontend_ip_configuration_name = "appgatewayfrontipconfig1"
        protocol                       = "Http"
      }
      # {
      #   name                           = "https_listener443"
      #   frontend_port_name             = "Frontend_port443"
      #   frontend_ip_configuration_name = "appgatewayfrontipconfig2"
      #   protocol                       = "Https"
      # }
    ]

    # Multiple routing rules
    request_routing_rules = [
      {
        name                       = "http-rule"
        rule_type                  = "Basic"
        http_listener_name         = "http_listener80"
        backend_address_pool_name  = "appgatewaybackend_address_pool1"
        backend_http_settings_name = "backend_http_settings_80"
        priority                   = 100
      }
      # {
      #   name                       = "https-rule"
      #   rule_type                  = "Basic"
      #   http_listener_name         = "https_listener443"
      #   backend_address_pool_name  = "appgatewaybackend_address_pool2"
      #   backend_http_settings_name = "backend_http_settings_443"
      #   priority                   = 200
      # }
    ]
  }
}

tushar_service_planvarsM = {
  # tushar_service_plan1 = {
  #   name                = "tushar_service_plan1"
  #   resource_group_name = "tushar_RG1"
  #   location            = "France Central"
  #   sku_name            = "Y1"
  #   os_type             = "Linux"
  # }
  tushar_service_plan2 = {
    name                = "tushar_service_plan2"
    resource_group_name = "tushar_RG1"
    location            = "France Central"
    sku_name            = "WS2"
    os_type             = "Linux"
  }
}

tushar_functionappvarsM = {
  tushar-function-app1 = {
    name                 = "tushar-function-app1"
    resource_group_name  = "tushar_RG1"
    location             = "France Central"
    storage_account_name = "tusharstgs1"
    service_plan_name    = "tushar_service_plan1"
  }
}

tushar_logicapp_standardvarsM = {
  tushar-logicapp1 = {
    name                  = "tushar-logicapp1"
    resource_group_name   = "tushar_RG1"
    location              = "France Central"
    storage_account_name  = "tusharstgs1"
    app_service_plan_name = "tushar_service_plan2"
  }
}