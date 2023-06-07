
$subid = ""

#Authenticate to Azure Sub
Connect-AzAccount

#set context to applicable subscription

Set-AzContext $subid

#need to create the OU in AD for the storage account

#change directory to AzFilesHybrid file. this needs to be downloaded as a release from github



.\CopyToPSPath.ps1

Import-Module AzFilesHybrid

Join-AzStorageAccount -ResourceGroupName "YourResourceGroup" -StorageAccountName "storageaccountname" -Domain "yourdomain.com" -DomainAccountType ComputerAccount -OrganizationalUnitName "StorageAccountsOU"
