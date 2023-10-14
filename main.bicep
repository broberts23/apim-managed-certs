param location string
param vnetName string
param subnetName string
param nsgName string
param apimName string
param tags object
param serviceEndpoints array
param securityRules array
param dnsName string

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-05-01' = {
  name: nsgName
  tags: tags
  location: location
  properties: {
    securityRules: [for rule in securityRules: {
      name: rule.name
      properties: rule.properties
    }]
  }
}

resource dns  'Microsoft.Network/privateDnsZones@2020-06-01' existing = {
  name: dnsName
}

resource vnet 'Microsoft.Network/virtualNetworks@2023-05-01' = {
  name: vnetName
  tags: tags
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.2.0.0/16'
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: '10.2.0.0/24'
          serviceEndpoints: [for endpoint in serviceEndpoints: {
            service: endpoint.service
            locations: endpoint.locations
          }]
          networkSecurityGroup: {
            id: nsg.id
          }
        }
      }
    ]
  }
}

resource dnslink 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: '${vnetName}-vnetlink'
  location: location
  parent: dns
  properties: {
    virtualNetwork: {
      id: vnet.id
    }
  }
}

resource pip 'Microsoft.Network/publicIPAddresses@2023-05-01' = {
  name: '${apimName}-pip'
  tags: tags
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
    dnsSettings: {
      domainNameLabel: toLower(apimName) 
    }
  }
}

resource apim 'Microsoft.ApiManagement/service@2023-03-01-preview' = {
  name: apimName
  tags: tags
  location: location
  sku: {
    name: 'Developer'
    capacity: 1
  }
  properties: {
    publisherEmail: 'ben@benroberts.io'
    publisherName: 'Ben Roberts'
    virtualNetworkType: 'Internal'
    publicIpAddressId: pip.id
    virtualNetworkConfiguration: {
      subnetResourceId: vnet.properties.subnets[0].id
    }
  }
}

