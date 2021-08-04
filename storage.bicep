param storageAccountName string
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Cool'
  }
}
 resource publicIp 'Microsoft.Network/publicIPAddresses@2021-02-01' = {
  name: 'myPip'
  sku: {
    name: 'Standard'
  }
}
