#below command to show the profiles which are connected earlier to this computer
netsh wlan show profiles

#below command to show which network currently connected basic details only have the info
netsh wlan show networks

#below command to show currect network detailed information about the signal strength, type ,Channel information etc.
netsh wlan show network mode=bssid

#below command to show to get the password of connected mobile hotspot/ wi-fi devices
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

#below command to execute the connection to specified network
netsh wlan connect AndroidAPF2B5

#below command to automatically disconnect the current network
netsh wlan disconnect

