Function wi-fi_password
{
[cmdletBinding()]
param(
[parameter(Mandatory=$true)]
[string]$profilename,
[string]$key="clear"
)

$wifi=netsh wlan show profile $profilename key=$key
$ssidname=$wifi | Select-String -Pattern 'SSID name'
$profilename = ($ssidname -split ":")[-1].Trim() -replace '"'
$key_content=$wifi | Select-String -Pattern 'Key Content'
$pw=($key_content -split ":")[-1].Trim() -replace '"'

[PSCustomObject]@{
WifiProfileName= $profilename
Password=$pw
}
}

wi-fi_password