param networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name string = 'apimnsgjihgpoheizbowctpgloxhbcnyfxi'

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource 'Microsoft.Network/networkSecurityGroups@2023-05-01' = {
  name: networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name
  location: 'australiaeast'
  properties: {
    securityRules: [
      {
        name: 'Client_communication_to_API_Management'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Secure_Client_communication_to_API_Management'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'Internet'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 110
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Management_endpoint_for_Azure_portal_and_Powershell'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '3443'
          sourceAddressPrefix: 'ApiManagement'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 120
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_on_Redis_Cache'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '6381-6383'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 130
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_to_sync_Rate_Limit_Inbound'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '4290'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 135
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_on_Azure_SQL'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '1433'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Sql'
          access: 'Allow'
          priority: 140
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_for_Log_to_event_Hub_policy'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '5671'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'EventHub'
          access: 'Allow'
          priority: 150
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_on_Redis_Cache_outbound'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '6381-6383'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 160
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Depenedency_To_sync_RateLimit_Outbound'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '4290'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 165
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_on_Azure_File_Share_for_GIT'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '445'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Storage'
          access: 'Allow'
          priority: 170
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Azure_Infrastructure_Load_Balancer'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 180
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Publish_DiagnosticLogs_And_Metrics'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          description: 'APIM Logs and Metrics for consumption by admins and your IT team are all part of the management plane'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureMonitor'
          access: 'Allow'
          priority: 185
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '443'
            '12000'
            '1886'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Connect_To_SMTP_Relay_For_SendingEmails'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          description: 'APIM features the ability to generate email traffic as part of the data plane and the management plane'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Internet'
          access: 'Allow'
          priority: 190
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '25'
            '587'
            '25028'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Authenticate_To_Azure_Active_Directory'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          description: 'Connect to Azure Active Directory for Developer Portal Authentication or for Oauth2 flow during any Proxy Authentication'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureActiveDirectory'
          access: 'Allow'
          priority: 200
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '80'
            '443'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Dependency_on_Azure_Storage'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          description: 'APIM service dependency on Azure Blob and Azure Table Storage'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Storage'
          access: 'Allow'
          priority: 100
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Publish_Monitoring_Logs'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureCloud'
          access: 'Allow'
          priority: 300
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Access_KeyVault'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          description: 'Allow APIM service control plane access to KeyVault to refresh secrets'
          protocol: 'Tcp'
          sourcePortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'AzureKeyVault'
          access: 'Allow'
          priority: 350
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: [
            '443'
          ]
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Deny_All_Internet_Outbound'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'Internet'
          access: 'Deny'
          priority: 999
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Access_KeyVault 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Access_KeyVault'
  properties: {
    description: 'Allow APIM service control plane access to KeyVault to refresh secrets'
    protocol: 'Tcp'
    sourcePortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'AzureKeyVault'
    access: 'Allow'
    priority: 350
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '443'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Authenticate_To_Azure_Active_Directory 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Authenticate_To_Azure_Active_Directory'
  properties: {
    description: 'Connect to Azure Active Directory for Developer Portal Authentication or for Oauth2 flow during any Proxy Authentication'
    protocol: 'Tcp'
    sourcePortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'AzureActiveDirectory'
    access: 'Allow'
    priority: 200
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '80'
      '443'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Azure_Infrastructure_Load_Balancer 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Azure_Infrastructure_Load_Balancer'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '*'
    sourceAddressPrefix: 'AzureLoadBalancer'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 180
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Client_communication_to_API_Management 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Client_communication_to_API_Management'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '80'
    sourceAddressPrefix: 'Internet'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Connect_To_SMTP_Relay_For_SendingEmails 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Connect_To_SMTP_Relay_For_SendingEmails'
  properties: {
    description: 'APIM features the ability to generate email traffic as part of the data plane and the management plane'
    protocol: 'Tcp'
    sourcePortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'Internet'
    access: 'Allow'
    priority: 190
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '25'
      '587'
      '25028'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Deny_All_Internet_Outbound 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Deny_All_Internet_Outbound'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'Internet'
    access: 'Deny'
    priority: 999
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_for_Log_to_event_Hub_policy 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_for_Log_to_event_Hub_policy'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '5671'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'EventHub'
    access: 'Allow'
    priority: 150
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_on_Azure_File_Share_for_GIT 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_on_Azure_File_Share_for_GIT'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '445'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'Storage'
    access: 'Allow'
    priority: 170
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_on_Azure_SQL 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_on_Azure_SQL'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '1433'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'Sql'
    access: 'Allow'
    priority: 140
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_on_Azure_Storage 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_on_Azure_Storage'
  properties: {
    description: 'APIM service dependency on Azure Blob and Azure Table Storage'
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'Storage'
    access: 'Allow'
    priority: 100
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_on_Redis_Cache 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_on_Redis_Cache'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '6381-6383'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 130
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_on_Redis_Cache_outbound 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_on_Redis_Cache_outbound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '6381-6383'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 160
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Dependency_to_sync_Rate_Limit_Inbound 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Dependency_to_sync_Rate_Limit_Inbound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '4290'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 135
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Depenedency_To_sync_RateLimit_Outbound 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Depenedency_To_sync_RateLimit_Outbound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '4290'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 165
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Management_endpoint_for_Azure_portal_and_Powershell 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Management_endpoint_for_Azure_portal_and_Powershell'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '3443'
    sourceAddressPrefix: 'ApiManagement'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 120
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Publish_DiagnosticLogs_And_Metrics 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Publish_DiagnosticLogs_And_Metrics'
  properties: {
    description: 'APIM Logs and Metrics for consumption by admins and your IT team are all part of the management plane'
    protocol: 'Tcp'
    sourcePortRange: '*'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'AzureMonitor'
    access: 'Allow'
    priority: 185
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: [
      '443'
      '12000'
      '1886'
    ]
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Publish_Monitoring_Logs 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Publish_Monitoring_Logs'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'VirtualNetwork'
    destinationAddressPrefix: 'AzureCloud'
    access: 'Allow'
    priority: 300
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}

resource networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_Secure_Client_communication_to_API_Management 'Microsoft.Network/networkSecurityGroups/securityRules@2023-05-01' = {
  name: '${networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name}/Secure_Client_communication_to_API_Management'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: 'Internet'
    destinationAddressPrefix: 'VirtualNetwork'
    access: 'Allow'
    priority: 110
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_apimnsgjihgpoheizbowctpgloxhbcnyfxi_name_resource
  ]
}
