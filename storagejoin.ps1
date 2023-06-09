#Navigate to https://github.com/Azure-Samples/azure-files-samples/releases

#Download the latest Zip release AzFilesHybrid.zip

#unzip files

#copy files to your working directory

#change directory to working directory

#Create the OU in AD for the storage account

#declare variables to join your Azure File Share to your domain
$subid = ""

$rg = ""

$stgeacctname = ""

$domain = ""

$fileshareOU = ""

#Authenticate to Azure Sub
Connect-AzAccount

#set context to applicable subscription
Set-AzContext $subid

#copy required files
.\CopyToPSPath.ps1

Import-Module AzFilesHybrid

Join-AzStorageAccount -ResourceGroupName $rg -StorageAccountName $stgeacctname -Domain $domain -DomainAccountType ComputerAccount -OrganizationalUnitName $fileshareOU