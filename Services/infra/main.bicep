param storageAccountName string
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: { name: 'Standard_LRS' }
  kind: 'StorageV2'
  tags: {
    environment: 'DEV'  // Optional, you can replace with parameter later
  }
  //comment1
}

output storageAccountNameOutput string = storage.name
